# sonar-sys-arena-core

`sonar-sys-arena-core` is a R project in systems programming. Its focus is to build an R toolkit that studies arena behavior through layout fixtures, with stable geometry snapshots and local-only command execution.

## Problem It Tries To Make Smaller

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Sonar Sys Arena Core Review Notes

For a quick review, compare `guard slack` with `dirty state` before reading the middle cases.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/sonar-sys-arena-walkthrough.md` walks through the case spread.
- The R code includes a review path for `guard slack` and `dirty state`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The R implementation avoids hidden state so fixture changes are easy to reason about.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
