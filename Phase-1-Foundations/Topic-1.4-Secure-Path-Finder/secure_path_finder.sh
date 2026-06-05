#!/bin/bash

# ============================================
# Mini Project 1.4 — The Secure Path Finder
# Merges: Absolute/Relative Paths + File Permissions
# ============================================

echo "==============================="
echo "  THE SECURE PATH FINDER"
echo "==============================="
echo ""

# --- 1. Build the Structure (Paths) ---
echo "--- 1. BUILDING FOLDER STRUCTURE ---"
mkdir -p practice_paths/config
mkdir -p practice_paths/logs
echo "Created folders: config/ and logs/"
echo ""

# --- 2. Create the files (Redirection) ---
echo "--- 2. POPULATING FILES ---"
touch practice_paths/logs/app.log
# Using > to push a secret password into the settings file
echo "super_secret_db_password_123" > practice_paths/config/settings.txt
echo "Created: app.log and settings.txt"
echo ""

# --- 3. Absolute vs Relative Paths ---
echo "--- 3. PATHS EXPLAINED ---"
echo "Absolute path to config (works from anywhere):"
echo "$PWD/practice_paths/config"
echo "Relative path to config (only works from here):"
echo "practice_paths/config"
echo ""

# --- 4. The Bouncer (Permissions) ---
echo "--- 4. SECURING THE VAULT ---"
echo "Default permissions for settings.txt (Notice the 'r' for others):"
ls -l practice_paths/config/settings.txt

echo "Locking down settings.txt (Principle of Least Privilege)..."
chmod 600 practice_paths/config/settings.txt

echo "New secure permissions (Read/Write for Owner ONLY):"
ls -l practice_paths/config/settings.txt
echo ""

# --- 5. Save the Map (Append) ---
echo "--- 5. SAVING MAP ---"
MAP_FILE="practice_paths/path_map.txt"
echo "Path and Security Map" > $MAP_FILE
# Using >> to append (add to the bottom) instead of overwrite
echo "Generated: $(date)" >> $MAP_FILE
echo "Vault Status: SECURED" >> $MAP_FILE
echo "Done. Map saved to $MAP_FILE"
echo "==============================="
