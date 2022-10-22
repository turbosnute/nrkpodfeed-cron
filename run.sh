#!/bin/sh
python3 /app/generate_feeds.py
cron -f
