#!/bin/bash
set -e

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPENCODE_CONFIG_DIR="${OPENCODE_CONFIG_DIR:-$HOME/.config/opencode}"

echo "Installing opencode-workflow to $OPENCODE_CONFIG_DIR..."

mkdir -p "$OPENCODE_CONFIG_DIR/agents"
mkdir -p "$OPENCODE_CONFIG_DIR/skills"

cp -r "$SRC_DIR/agents/." "$OPENCODE_CONFIG_DIR/agents/"
echo "  Installed $(ls "$SRC_DIR/agents/" | wc -l) agents"

cp -r "$SRC_DIR/skills/." "$OPENCODE_CONFIG_DIR/skills/"
echo "  Installed $(ls "$SRC_DIR/skills/" | wc -l) skills"

echo "Installation complete."
