#!/bin/bash

# permissions_audit.sh
# Scans a directory and reports file permissions — a basic security audit tool

TARGET_DIR="${1:-$HOME}"

echo "============================================"
echo "  PERMISSIONS AUDIT REPORT"
echo "  Scanning: $TARGET_DIR"
echo "  Date: $(date)"
echo "============================================"
echo ""

echo "--- WORLD-WRITABLE FILES (Security Risk) ---"
find "$TARGET_DIR" -maxdepth 2 -type f -perm -o+w 2>/dev/null
echo ""

echo "--- EXECUTABLE FILES ---"
find "$TARGET_DIR" -maxdepth 2 -type f -perm -u+x 2>/dev/null
echo ""

echo "--- FULL PERMISSION LISTING ---"
ls -l "$TARGET_DIR"
echo ""

echo "============================================"
echo "  Audit complete."
echo "============================================"
