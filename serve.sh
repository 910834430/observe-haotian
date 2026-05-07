#!/usr/bin/env bash
# Serve observe-haotian on port 8765
cd "$(dirname "$0")"
echo "Serving at http://$(tailscale ip -4 2>/dev/null || hostname -I | awk '{print $1}'):8765"
python3 -m http.server 8765
