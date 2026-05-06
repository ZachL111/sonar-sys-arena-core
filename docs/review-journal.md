# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 153, lane `ship`
- `stress`: `dirty state`, score 127, lane `watch`
- `edge`: `guard slack`, score 206, lane `ship`
- `recovery`: `layout drift`, score 200, lane `ship`
- `stale`: `allocation pressure`, score 158, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
