# Day Trader — Project Operating Guide

## Project Purpose
The Day Trader is an automated/semi-automated trading system focused on executing high-probability trades with strict risk management.

Primary goal:
→ grow capital consistently while limiting downside risk

This is NOT a toy system.
It must behave predictably, safely, and logically under real market conditions.

---

## Core Goals
- Maximise risk-adjusted returns
- Enforce strict loss limits
- Execute trades reliably
- Use data + news intelligently
- Avoid overtrading
- Maintain full visibility of decisions

---

## Working Priorities
1. Risk control
2. Execution reliability
3. Data accuracy
4. Strategy quality
5. Performance optimisation

Never sacrifice risk control for potential upside.

---

## System Context
Current system includes:
- IBKR integration (ib_insync)
- automated trade loop
- managed trades tracking
- stop / target / trailing logic
- breakeven rules
- news + macro signals
- regime overlays
- config-driven behaviour
- logging + diagnostics

---

## Default Behaviour
For any change:
1. Define the trading impact
2. Identify affected system components
3. Assess risk implications
4. Implement carefully
5. Verify with realistic scenarios

Never implement blindly.

---

## Risk Management Rules
These are absolute:

- Max daily loss must be enforced
- Position sizing must respect account size
- Stop losses must always exist
- No uncontrolled exposure
- No “hope-based” logic
- No doubling down to recover losses

If a change weakens risk controls → reject or redesign

---

## Strategy Rules
- Prefer simple, explainable strategies
- Avoid overfitting
- Use clear entry/exit logic
- Ensure signals are meaningful, not noisy
- Avoid stacking too many indicators
- Ensure consistency across trades

Every trade should answer:
- why this trade?
- what invalidates it?
- what is the risk/reward?

---

## Execution Rules
- Orders must be reliable
- Handle partial fills
- Handle failed orders
- Sync state with broker on restart
- Avoid duplicate trades
- Ensure correct stop/target placement

Always assume:
- network issues happen
- API responses fail
- data may be delayed

---

## Data Rules
- Validate market data type (live vs delayed)
- Do not trade on unreliable data
- Handle missing data safely
- Log important values clearly
- Ensure symbol mapping is correct

---

## News / Macro Engine Rules
- Treat news signals as overlays, not absolute triggers
- Avoid overreacting to noise
- Use severity + confidence logic
- Allow regime bias but not blind trading
- Combine with price action where possible

---

## Automation Rules
Automation must:
- be predictable
- be controllable (pause / kill switch)
- log all decisions
- handle errors gracefully
- not spiral into repeated failures

---

## Debugging Rules
When something breaks:
1. Identify root cause
2. Check:
   - broker connection
   - data quality
   - state files
   - logic conditions
3. Fix cleanly
4. Verify system stability

Never patch blindly.

---

## Testing Rules
Before trusting any change:
- simulate trades
- test edge cases
- test failure scenarios
- validate logs
- ensure no unintended behaviour

---

## Output Style
Responses should be:
- precise
- logic-driven
- risk-aware
- practical

Structure:
1. What’s happening
2. Recommended approach
3. Risk considerations
4. Improvements

---

## Challenge Bad Ideas
Push back if a request:
- increases risk exposure
- removes safeguards
- adds complexity without benefit
- relies on weak signals
- ignores real market conditions

---

## Definition of Done
A change is not done unless:
- risk is controlled
- logic is sound
- execution is reliable
- edge cases are considered
- logs confirm expected behaviour
