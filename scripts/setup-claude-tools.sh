#!/usr/bin/env bash
set -euo pipefail

echo "==> Checking Node/npm"
node -v
npm -v

echo "==> Setting up Context7 for Claude"
npx ctx7 setup --claude

echo "==> Verifying local MCP commands resolve"
npx -y @playwright/mcp@latest --help >/dev/null 2>&1 || true
npx -y chrome-devtools-mcp@latest --help >/dev/null 2>&1 || true
npx -y firecrawl-mcp --help >/dev/null 2>&1 || true

echo
echo "Done."
echo
echo "Next manual steps:"
echo "1. Ensure FIRECRAWL_API_KEY is set in your shell/profile"
echo "2. In Claude Code, from this repo, run:"
echo "   claude mcp add --transport stdio --scope project playwright -- npx @playwright/mcp@latest"
echo "   claude mcp add --transport stdio --scope project chrome-devtools -- npx -y chrome-devtools-mcp@latest --headless"
echo "   claude mcp add --transport stdio --scope project firecrawl --env FIRECRAWL_API_KEY=\$FIRECRAWL_API_KEY -- npx -y firecrawl-mcp"
echo "3. Add GitHub MCP and n8n MCP separately with auth"
echo "4. Install Claude Mem inside Claude Code:"
echo "   /plugin marketplace add thedotmack/claude-mem"
echo "   /plugin install claude-mem"
