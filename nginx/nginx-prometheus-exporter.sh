#!/bin/sh
set -e

nohup nginx-prometheus-exporter --nginx.scrape-uri=http://127.0.0.1:9100/stub_status > /var/log/nginx-prometheus-exporter.log 2>&1 &
