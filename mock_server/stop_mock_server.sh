#!/bin/sh
# Stop the mock server running on port 4000 (Linux/macOS only)
PID=$(lsof -ti:4000)
if [ -n "$PID" ]; then
  kill $PID
  echo "Stopped mock server (PID $PID)"
else
  echo "No process found on port 4000."
fi
