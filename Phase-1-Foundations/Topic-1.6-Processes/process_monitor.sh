#!/bin/bash

echo "=====Process Monitor Report ======"
echo "Time: $(date)"
echo "Hostname: $(hostname)"
echo ""

echo "-----Top 5 Processes by CPU-----"
ps aux -r | head -6

echo ""

echo "-----Top 5 Processes by Memory---"
ps aux -m | head -6

echo ""
TOTAL=$(ps aux | wc -l | xargs)
echo "----- Total Running Processes: $TOTAL -----"

