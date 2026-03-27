# Workflow Router

This repository is the shared AI operating system for multiple separate project repositories.

It contains:
- shared operating rules
- reusable prompt templates
- project-specific guides
- workflow routing instructions

It does not need to contain the actual application code for each project.

---

## How to Use This Repo

When working on a project in another repository, use:
1. the root guidance from `CLAUDE.md`
2. the relevant project guide from `projects/.../PROJECT.md`
3. the relevant task prompt from `prompts/...`

Combine them explicitly at the start of a task.

---

## Default Task Pattern

For any meaningful task, load:
- root operating guide
- one project guide
- one prompt guide

Pattern:

Use:
- `CLAUDE.md`
- `projects/<project-name>/PROJECT.md`
- `prompts/<prompt-name>.md`

Then complete the task.

---

## Example Usage

### Adopt a Brick
Use:
- `CLAUDE.md`
- `projects/adopt-a-brick/PROJECT.md`
- `prompts/fix-bug.md`

Task:
Fix the checkout step progression bug without falling back to default WooCommerce behaviour.

### Tradies App
Use:
- `CLAUDE.md`
- `projects/tradies-app/PROJECT.md`
- `prompts/plan-feature.md`

Task:
Plan the background location update architecture for campaign radius automation.

### Agency Work
Use:
- `CLAUDE.md`
- `projects/agency/PROJECT.md`
- `prompts/improve-ui.md`

Task:
Improve the trust and hierarchy of this landing page hero section.

### Day Trader
Use:
- `CLAUDE.md`
- `projects/day-trader/PROJECT.md`
- `prompts/system-audit.md`

Task:
Audit the trading bot architecture for reliability and risk-control weaknesses.

---

## Project Map

Available project guides:
- `projects/adopt-a-brick/PROJECT.md`
- `projects/tradies-app/PROJECT.md`
- `projects/agency/PROJECT.md`
- `projects/day-trader/PROJECT.md`

Add new projects using the same structure:
- `projects/<new-project>/PROJECT.md`

---

## Prompt Map

Available task prompts:
- `prompts/build-feature.md`
- `prompts/fix-bug.md`
- `prompts/improve-ui.md`
- `prompts/plan-feature.md`
- `prompts/review-code.md`
- `prompts/qa-flow.md`
- `prompts/system-audit.md`
- `prompts/optimise-performance.md`
- `prompts/analyse-trade.md`
- `prompts/improve-strategy.md`
- `prompts/backtest-thinking.md`

Add new prompts in:
- `prompts/<prompt-name>.md`

---

## Rules for Project Selection

Choose the nearest matching project guide.

- Use `projects/adopt-a-brick/PROJECT.md` for viral gifting ecommerce, Woo custom flow, brick logic, and conversion-focused product work.
- Use `projects/tradies-app/PROJECT.md` for mobile SaaS, background automation, Google Ads/location logic, and subscription product work.
- Use `projects/agency/PROJECT.md` for general WordPress, WooCommerce, Elementor, landing page, client delivery, and fast commercial implementation.
- Use `projects/day-trader/PROJECT.md` for trading systems, IBKR, automation, risk logic, news overlays, and execution reliability.

If a task overlaps multiple areas:
- state the primary guide
- state any secondary guide influencing the answer

Example:
Primary guide: `projects/agency/PROJECT.md`
Secondary guide: `projects/adopt-a-brick/PROJECT.md`

---

## Rules for Prompt Selection

Choose the prompt based on the task type.

- Use `build-feature.md` when creating something new
- Use `fix-bug.md` when diagnosing and repairing an issue
- Use `improve-ui.md` when improving design, trust, hierarchy, or conversion
- Use `plan-feature.md` before implementation
- Use `review-code.md` when reviewing an existing implementation
- Use `qa-flow.md` when testing full end-to-end flows
- Use `system-audit.md` when auditing architecture, structure, and risk
- Use `optimise-performance.md` when performance is the focus
- Use `analyse-trade.md`, `improve-strategy.md`, and `backtest-thinking.md` for trading work

---

## Behaviour Defaults

Unless told otherwise:
- plan before implementing
- prefer clean, practical solutions
- verify before concluding
- identify root cause before fixing
- consider commercial impact as well as technical correctness
- challenge weak or overcomplicated ideas
- keep outputs direct and useful

---

## Repo Reality

The actual project code may live in separate repositories.

That is expected.

This repo should still be used as:
- the instruction layer
- the shared system layer
- the reusable prompt library
- the project routing layer

When working in another repo, copy or reference the relevant project guide and prompt combination into the task context.
