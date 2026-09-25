#!/usr/bin/env bash
set -euo pipefail

lb config \
    --distribution trixie \
    --architectures amd64 \
    --binary-images iso-hybrid \
    --archive-areas "main contrib non-free-firmware" \
    --apt-recommends false

lb build

sha256sum ./*.iso > SHA256SUMS