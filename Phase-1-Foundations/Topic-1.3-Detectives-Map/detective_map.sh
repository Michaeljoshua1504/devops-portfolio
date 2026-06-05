#!/bin/bash

# ============================================
# Mini Project 1.3 — The Detective's Map
# Explores key Linux filesystem locations
# ============================================

echo "==============================="
echo "  THE DETECTIVE'S MAP"
echo "  Linux Filesystem Explorer"
echo "==============================="
echo ""

# --- Where am I right now? ---
echo "--- YOUR CURRENT LOCATION ---"
echo "You are here:"
pwd
echo ""

# --- What is in your home directory? ---
echo "--- YOUR HOME DIRECTORY ---"
ls ~
echo ""

# --- The /etc/ folder (system configuration) ---
echo "--- /etc/ — SYSTEM CONFIG FILES (first 10) ---"
ls /etc/ | head -10
echo "... and more. Total files:"
ls /etc/ | wc -l
echo ""

# --- The /var/log/ folder (system logs) ---
echo "--- /var/log/ — SYSTEM LOGS ---"
ls /var/log/
echo ""

# --- The /home/ folder (all users) ---
echo "--- /home/ — USER HOME DIRECTORIES ---"
ls /home/
echo ""

# --- The /tmp/ folder (temporary files) ---
echo "--- /tmp/ — TEMPORARY FILES ---"
ls /tmp/ | head -5
echo ""

# --- Path summary ---
echo "==============================="
echo "KEY LOCATIONS SUMMARY"
echo "  /etc/     = system configuration"
echo "  /var/log/ = system logs"
echo "  /home/    = user home directories"
echo "  /tmp/     = temporary files (cleared on reboot)"
echo "  /bin/     = essential system commands"
echo "  /usr/bin/ = user-installed programs"
echo "==============================="
