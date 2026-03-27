$ErrorActionPreference = "Stop"

Write-Host "==> Checking Node/npm"
node -v
npm -v

Write-Host "==> Setting up Context7 for Claude"
npx ctx7 setup --claude

Write-Host "==> Verifying local MCP commands resolve"
try { npx -y @playwright/mcp@latest --help | Out-Null } catch {}
try { npx -y chrome-devtools-mcp@latest --help | Out-Null } catch {}
try { npx -y firecrawl-mcp --help | Out-Null } catch {}

Write-Host ""
Write-Host "Done."
Write-Host ""
Write-Host "Next manual steps:"
Write-Host "1. Ensure FIRECRAWL_API_KEY is set in your environment"
Write-Host "2. In Claude Code, from this repo, run:"
Write-Host "   claude mcp add --transport stdio --scope project playwright -- npx @playwright/mcp@latest"
Write-Host "   claude mcp add --transport stdio --scope project chrome-devtools -- npx -y chrome-devtools-mcp@latest --headless"
Write-Host "   claude mcp add --transport stdio --scope project firecrawl --env FIRECRAWL_API_KEY=$env:FIRECRAWL_API_KEY firecrawl -- npx -y firecrawl-mcp"
Write-Host "3. Add GitHub MCP and n8n MCP separately with auth"
Write-Host "4. Install Claude Mem inside Claude Code:"
Write-Host "   /plugin marketplace add thedotmack/claude-mem"
Write-Host "   /plugin install claude-mem"
