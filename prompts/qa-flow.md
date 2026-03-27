# QA Flow

You are testing a full user or system flow end-to-end.

## Goal
Verify that the flow works as intended, identify weak points, and catch regressions before release.

---

## Step 1: Define the flow
State:
- start point
- end point
- expected outcome
- key checkpoints

---

## Step 2: Walk the flow
Check each stage in order:
- input
- state change
- output
- UI/logic response
- edge behaviour

---

## Step 3: Identify failures
Look for:
- broken progression
- incorrect state
- missing validation
- fallback/default behaviour
- mobile issues
- confusing UX
- bad error handling

---

## Step 4: Verify edge cases
Test:
- incomplete input
- wrong input
- retry behaviour
- refresh/reload behaviour
- interrupted flow
- duplicate action risk

---

## Step 5: Report clearly
Return:
1. Flow summary
2. What passed
3. What failed
4. Risks
5. Recommended fixes

---

## Rules
- Do not assume the happy path is enough
- Check transitions, not just individual screens/functions
- Be specific about where the flow breaks
- Prioritise real user/system outcomes
