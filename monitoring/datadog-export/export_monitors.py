#!/usr/bin/env python3
"""
export_monitors.py
Exports all Datadog monitors to a CSV file.

Prerequisites:
- Set DATADOG_API_KEY and DATADOG_APP_KEY environment variables.
- pip install datadog

Usage:
python export_monitors.py --output monitors.csv
"""

import os
import csv
import argparse
from datadog import initialize, api

def main():
    parser = argparse.ArgumentParser(description="Export Datadog monitors to CSV")
    parser.add_argument('--output', default='monitors.csv', help='Output CSV file')
    args = parser.parse_args()

    # Read keys from environment
    api_key = os.getenv("DATADOG_API_KEY")
    app_key = os.getenv("DATADOG_APP_KEY")
    if not api_key or not app_key:
        raise SystemExit("Please set DATADOG_API_KEY and DATADOG_APP_KEY environment variables.")

    options = {"api_key": api_key, "app_key": app_key}
    initialize(**options)

    monitors = api.Monitor.get_all()
    # Write to CSV
    with open(args.output, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(["id", "name", "type", "query", "message", "tags"])
        for m in monitors:
            writer.writerow([
                m.get("id"),
                m.get("name"),
                m.get("type"),
                m.get("query"),
                m.get("message"),
                ",".join(m.get("tags", [])) if m.get("tags") else ""
            ])

    print(f"Exported {len(monitors)} monitors to {args.output}")

if __name__ == '__main__':
    main()
