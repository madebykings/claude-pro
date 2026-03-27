# Claude Stack Notes

## Default tool order
1. Context7 for docs
2. GitHub MCP for repo context
3. Chrome DevTools MCP for live page debugging
4. Playwright MCP for flow testing
5. Firecrawl MCP for external site analysis
6. n8n MCP for automation workflows
7. Claude Mem for prior-session recall

## Rules
- Never write framework-dependent code without checking current docs first.
- Never debug CSS blind if live DOM inspection is possible.
- Never sign off a checkout or multi-step flow without Playwright testing.
- Never expose every n8n workflow; expose only safe, intentional tools.
- Turn repeated fixes into reusable snippets/scripts.
