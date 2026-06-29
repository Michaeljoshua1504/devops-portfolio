#!/bin/bash

# ─────────────────────────────────────────
# network_detective.sh
# Topic 2.1 — How the Internet Works
# Produces a formatted network report
# ─────────────────────────────────────────

echo "======================================"
echo "       NETWORK DETECTIVE REPORT       "
echo "======================================"
echo ""

# ── 1. TIMESTAMP ──
echo "Report generated: $(date)"
echo ""

# ── 2. CONNECTIVITY CHECK ──
echo "── CONNECTIVITY CHECK ──"
if ping -c 1 -W 2 google.com &>/dev/null; then
  echo "Status: ✅ Internet connection is active"
else
  echo "Status: ❌ No internet connection detected"
fi
echo ""

# ── 3. LOCAL IP ADDRESS ──
echo "── LOCAL IP ADDRESS ──"
LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)
if [ -z "$LOCAL_IP" ]; then
  echo "Local IP: Could not detect"
else
  echo "Local IP: $LOCAL_IP"
fi
echo "(This is your private address — only visible inside your home network)"
echo ""

# ── 4. PUBLIC IP ADDRESS ──
echo "── PUBLIC IP ADDRESS ──"
PUBLIC_IP=$(curl -s https://api.ipify.org)
if [ -z "$PUBLIC_IP" ]; then
  echo "Public IP: Could not detect"
else
  echo "Public IP: $PUBLIC_IP"
fi
echo "(This is what the internet sees — your Airtel-assigned address)"
echo ""

# ── 5. TRACEROUTE TO GOOGLE ──
echo "── TRACEROUTE TO GOOGLE ──"
echo "Tracing route... (this may take 15-20 seconds)"
echo ""
traceroute -m 15 google.com
echo ""

echo "======================================"
echo "         END OF REPORT                "
echo "======================================"
