# Adopt a Brick — Project Operating Guide

## Project Purpose
Adopt a Brick is a WooCommerce-based viral gifting product. Users “adopt” a physical brick and send it to someone else, optionally anonymously. The experience should feel playful, low-friction, trustworthy, and highly shareable.

This is not a standard ecommerce build.
It is a conversion-focused, story-driven product with viral loop mechanics.

---

## Core Product Goals
- Make purchasing feel simple and fun
- Minimise checkout friction
- Increase trust despite the unusual product concept
- Support named and anonymous gifting
- Make the “send one back” loop easy
- Preserve novelty without making the UX feel gimmicky
- Keep the system maintainable inside WordPress/WooCommerce

---

## Working Priorities
When making decisions, optimise in this order:
1. Conversion rate
2. Clarity and trust
3. Viral/shareable mechanics
4. Simplicity of flow
5. Maintainability
6. Visual polish

Do not sacrifice conversion clarity for cleverness.

---

## Technical Context
Primary stack:
- WordPress
- WooCommerce
- Elementor
- Custom plugin logic
- Custom checkout / stepped flow
- JetEngine option/meta usage where needed

Likely areas of work:
- custom WooCommerce flow overrides
- brick claim / reserve / release logic
- post meta for brick data
- reply/send-back flows
- checkout UX
- mobile order and layout issues
- custom fields and validation
- lightweight viral mechanics

---

## Default Behaviour
For any non-trivial task:
1. Plan first
2. Identify where the change belongs
3. Implement the smallest correct solution
4. Verify impact on checkout and gifting flow
5. Flag any conversion or trust risks

Do not jump straight into code without understanding:
- the user journey
- the WooCommerce hook impact
- whether the plugin or theme should own the logic

---

## Architecture Rules
- Prefer plugin-based business logic over theme hacks
- Keep checkout logic centralised
- Avoid scattering critical flow logic across multiple files unless necessary
- Reuse functions for repeated brick/cart/recipient logic
- Keep naming consistent between UI language and stored data
- Avoid brittle DOM-dependent JS where a server-side or Woo-native solution is cleaner

If a solution is hacky but fast, propose the cleaner version too.

---

## UX Rules
The product must feel:
- unusual but believable
- playful but premium enough to trust
- simple enough for impulse purchase
- emotionally clear

Always optimise for:
- fewer decisions
- clearer step progression
- visible trust cues
- mobile-first readability
- low cognitive load

When evaluating UI:
- Does the user instantly understand what they are buying?
- Is the next step obvious?
- Does anything create hesitation?
- Does the page feel trustworthy?
- Is mobile ordering correct?

---

## Viral Mechanics Rules
Preserve and improve these concepts where relevant:
- recipient reveal
- anonymous or named sender logic
- “send one back” behaviour
- chain continuation
- unique brick identity / number
- novelty and screenshot-worthiness

But:
- never let viral mechanics create confusion at checkout
- never bury trust or fulfilment clarity beneath gimmicks
- never make core purchase steps feel silly or unclear

---

## Checkout Rules
This project should not drift back toward generic WooCommerce checkout behaviour unless explicitly intended.

When working on checkout:
- treat the custom flow as a product experience, not a template tweak
- prioritise step clarity
- ensure cart state is reliable
- ensure brick reservation and ownership logic are consistent
- verify mobile ordering
- verify form completion and validation behaviour
- verify summary placement and CTA clarity

Always ask:
- is this helping conversion?
- is this reducing friction?
- is this preserving trust?

---

## Data Rules
Be careful with brick ownership and recipient data.

Prioritise:
- clear separation of product object data vs checkout/shipping data
- consistent meta naming
- predictable release/reset behaviour
- support for anonymous and named recipient states
- safe prefill behaviour for reply/send-back flows

Do not introduce messy duplicate fields unless unavoidable.

---

## Debugging Rules
When debugging:
1. Find root cause first
2. Identify whether issue is:
   - WooCommerce default takeover
   - plugin flow bug
   - cart state issue
   - template override problem
   - JS/UI ordering problem
   - field/meta mismatch
3. Fix the real source
4. Prove the full flow still works

Do not patch symptoms only.

---

## Output Style
When responding on this project:
- be direct
- be commercial as well as technical
- mention conversion implications where relevant
- call out risk clearly
- prefer practical solutions over theory

Structure responses as:
1. What’s happening
2. Best fix
3. Why this is the right approach
4. What to verify next

---

## Strong Defaults
Assume:
- mobile matters a lot
- checkout friction kills sales
- plugin architecture is preferable
- WordPress/WooCommerce can silently fall back to defaults if custom flow breaks
- trust is fragile because the product is unconventional
- every decision should support conversion and repeat/share behaviour

---

## Challenge Bad Ideas
If a request would:
- make checkout longer
- reduce trust
- create field confusion
- break the custom flow
- duplicate data badly
- overcomplicate the plugin

then push back and suggest a better alternative.

---

## Definition of Done
A change is not done unless:
- the logic is correct
- the UX still makes sense
- mobile is considered
- checkout path is preserved
- trust/conversion impact is acceptable
- edge cases are acknowledged
