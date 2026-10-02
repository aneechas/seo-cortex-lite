#!/bin/bash
# SEO Cortex Lite Installer
# Copies .claude/ agents, skills, knowledge, workflows into your project

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-.}"

echo "SEO Cortex Lite Installer"
echo "========================="
echo ""
echo "Installing to: $TARGET"
echo ""

mkdir -p "$TARGET/.claude/agents"
mkdir -p "$TARGET/.claude/skills"
mkdir -p "$TARGET/.claude/knowledge"
mkdir -p "$TARGET/.claude/workflows"

cp "$SCRIPT_DIR/.claude/agents/"*.md "$TARGET/.claude/agents/" 2>/dev/null || true
cp "$SCRIPT_DIR/.claude/skills/"*.md "$TARGET/.claude/skills/" 2>/dev/null || true
cp "$SCRIPT_DIR/.claude/knowledge/"*.md "$TARGET/.claude/knowledge/" 2>/dev/null || true
cp "$SCRIPT_DIR/.claude/workflows/"*.md "$TARGET/.claude/workflows/" 2>/dev/null || true

if [ -f "$TARGET/CLAUDE.md" ]; then
  if ! grep -q "SEO Cortex Lite" "$TARGET/CLAUDE.md" 2>/dev/null; then
    printf '\n## SEO Cortex Lite\nSEO agents installed. Use `/seo-head` to start routing SEO requests.\n' >> "$TARGET/CLAUDE.md"
    echo "  Updated CLAUDE.md with SEO Cortex Lite reference"
  else
    echo "  CLAUDE.md already references SEO Cortex Lite — skipped"
  fi
else
  cp "$SCRIPT_DIR/CLAUDE.md" "$TARGET/CLAUDE.md"
  echo "  Created CLAUDE.md"
fi

echo ""
echo "SEO Cortex Lite installed successfully."
echo ""
echo "  10 agents  |  10 skills  |  5 knowledge files  |  3 workflows"
echo ""
echo "Start with:  /seo-head"
echo ""
