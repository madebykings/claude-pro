## TOOL USAGE DEFAULTS

When working in this repo, use these defaults:

- Use Context7 before writing code that depends on framework/library docs.
- Use Playwright MCP to test user flows, forms, checkout, and responsive behaviour.
- Use Chrome DevTools MCP when debugging CSS, JS, console errors, network failures, or live DOM issues.
- Use Firecrawl MCP for competitor research, scraping page structures, and extracting content from external sites.
- Use GitHub MCP for PR review, issue creation, branch/commit context, and repo-level inspection.
- Use n8n MCP when the task touches automation, workflows, webhooks, or integrations.
- Use Claude Mem to recall prior project decisions, previous fixes, and lessons learned.

Behaviour rules:
- For any non-trivial task: plan first, then implement, then verify.
- For any bug: identify root cause first, then fix, then prove the fix.
- For any UI issue: inspect live DOM before proposing CSS-only guesses.
- For any API/framework change: fetch current docs first.
- Prefer reusable snippets, scripts, and patterns over one-off fixes.
