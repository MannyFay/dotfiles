#!/bin/bash

#------------------------------------------------------------------------------
# YouTube Clipper
# Download a complete YouTube video in maximum quality as MP4.
# Make it executable with: chmod +x youtube-clipper.sh
# ------------------------------------------------------------------------------


read -p "Paste YouTube-URL: " url

if [[ -z "$url" ]]; then
  echo "❌ No URL passed. Task Aborted."
  exit 1
fi

echo "...downloading video..."

yt-dlp \
  -f "bv[ext=mp4][vcodec^=avc]+ba[ext=m4a]/best[ext=mp4]" \
  --merge-output-format mp4 \
  -o "%(title).200s.%(ext)s" \
  "$url"

echo "✅ Download completed."

