#!/bin/bash
# Run CBX scraper via Docker

LOG_FILE="logs/scraper.log"

mkdir -p logs

{
    echo "=== Script started at $(date) ==="
    echo ""
    docker run --rm --env-file .env -v /root/data:/data -v /root/output:/output cbx-scraper-cbx-scraper:latest
    echo ""
    echo "=== Finished exec at $(date) ==="
    echo ""
} >> "$LOG_FILE" 2>&1