#!/bin/bash

# ============================================================
# dns_port_detective.sh
# Topic 2.2 — IP Addresses, DNS, Ports
# Investigates a domain: DNS records + open port scan
# ============================================================

TARGET=${1:-"google.com"}

echo "============================================================"
echo "  DNS + PORT DETECTIVE REPORT"
echo "  Target: $TARGET"
echo "  Scanned at: $(date)"
echo "============================================================"
echo ""

# --- Section 1: DNS Resolution ---
echo "[ DNS RESOLUTION ]"
echo ""

A_RECORD=$(dig +short A "$TARGET" | head -5)
if [ -z "$A_RECORD" ]; then
  echo "  A Record (IPv4): Not found"
else
  echo "  A Record (IPv4):"
  echo "$A_RECORD" | while read -r ip; do
    echo "    -> $ip"
  done
fi
echo ""

AAAA_RECORD=$(dig +short AAAA "$TARGET" | head -3)
if [ -z "$AAAA_RECORD" ]; then
  echo "  AAAA Record (IPv6): Not found"
else
  echo "  AAAA Record (IPv6):"
  echo "$AAAA_RECORD" | while read -r ip; do
    echo "    -> $ip"
  done
fi
echo ""

MX_RECORD=$(dig +short MX "$TARGET" | head -5)
if [ -z "$MX_RECORD" ]; then
  echo "  MX Record (Mail): None"
else
  echo "  MX Record (Mail Servers):"
  echo "$MX_RECORD" | while read -r mx; do
    echo "    -> $mx"
  done
fi
echo ""

NS_RECORD=$(dig +short NS "$TARGET" | head -5)
if [ -z "$NS_RECORD" ]; then
  echo "  NS Record (Name Servers): None"
else
  echo "  NS Record (Name Servers):"
  echo "$NS_RECORD" | while read -r ns; do
    echo "    -> $ns"
  done
fi
echo ""

TXT_RECORD=$(dig +short TXT "$TARGET" | head -3)
if [ -z "$TXT_RECORD" ]; then
  echo "  TXT Record: None"
else
  echo "  TXT Record (first 3):"
  echo "$TXT_RECORD" | while read -r txt; do
    echo "    -> $txt"
  done
fi
echo ""

# --- Section 2: Port Scan ---
echo "------------------------------------------------------------"
echo "[ PORT SCAN ]"
echo "  Checking common ports on: $TARGET"
echo ""

PORTS=(22 25 53 80 443 3306 5432 6379 8080 27017)
PORT_NAMES=(SSH SMTP DNS HTTP HTTPS MySQL PostgreSQL Redis HTTP-ALT MongoDB)

OPEN_PORTS=()
CLOSED_PORTS=()

for i in "${!PORTS[@]}"; do
  PORT="${PORTS[$i]}"
  NAME="${PORT_NAMES[$i]}"
  # nc: -z = scan only, -w 1 = 1 second timeout, -G 1 = connect timeout (Mac)
  if nc -z -w 1 -G 1 "$TARGET" "$PORT" 2>/dev/null; then
    OPEN_PORTS+=("$PORT ($NAME)")
  else
    CLOSED_PORTS+=("$PORT ($NAME)")
  fi
done

echo "  OPEN PORTS:"
if [ ${#OPEN_PORTS[@]} -eq 0 ]; then
  echo "    None detected"
else
  for p in "${OPEN_PORTS[@]}"; do
    echo "    [OPEN]   $p"
  done
fi
echo ""

echo "  CLOSED / FILTERED PORTS:"
for p in "${CLOSED_PORTS[@]}"; do
  echo "    [closed] $p"
done
echo ""

# --- Section 3: Security Summary ---
echo "------------------------------------------------------------"
echo "[ SECURITY OBSERVATIONS ]"
echo ""

if echo "${OPEN_PORTS[@]}" | grep -q "3306\|5432\|27017\|6379"; then
  echo "  [WARNING] Database port(s) appear open to the internet."
  echo "            Databases should never be publicly exposed."
  echo "            Restrict access to internal IPs only."
  echo ""
fi

if echo "${OPEN_PORTS[@]}" | grep -q "80 "; then
  echo "  [NOTICE]  Port 80 (HTTP) is open — unencrypted traffic possible."
  echo "            Ensure HTTP redirects to HTTPS."
  echo ""
fi

if echo "${OPEN_PORTS[@]}" | grep -q "22 "; then
  echo "  [NOTICE]  Port 22 (SSH) is open to the internet."
  echo "            Consider restricting SSH to trusted IPs only."
  echo ""
fi

if [ ${#OPEN_PORTS[@]} -eq 0 ]; then
  echo "  No obvious exposures detected from this scan."
fi

echo "------------------------------------------------------------"
echo "  Scan complete."
echo "============================================================"
