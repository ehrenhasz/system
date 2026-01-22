#!/bin/bash
# Machine Inventory Script

echo "--- SYSTEM INFO ---"
uname -a
echo ""

echo "--- CPU ---"
lscpu | grep "Model name"
echo ""

echo "--- MEMORY ---"
free -h
echo ""

echo "--- DISK ---"
df -h .
echo ""

echo "--- PYTHON ---"
python3 --version
pip --version
echo ""

echo "--- CRON JOBS ---"
crontab -l
echo ""

echo "--- DND_DM SERVICES ---"
ps aux | grep -E "library_archivist|the_butcher|dnd_imports" | grep -v grep
echo ""

echo "--- DATABASE STATUS ---"
ls -lh /mnt/anvil_temp/dnd_vm/runtime/*.db