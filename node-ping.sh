#!/bin/bash
while true
do
  timestamp=$(date +%s)
  message="Log message $timestamp"
  curl -X POST -H "Content-Type: application/json" -H "X-API-Key: YOUR_API_KEY" -d "{\"message\":\"$message\"}" https://listener.logz.io:8071/?type=YOUR_LOG_TYPE
  sleep 60
done
