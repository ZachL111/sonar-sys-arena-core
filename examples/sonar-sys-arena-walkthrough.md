# Sonar Sys Arena Core Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 153 | ship |
| stress | dirty state | 127 | watch |
| edge | guard slack | 206 | ship |
| recovery | layout drift | 200 | ship |
| stale | allocation pressure | 158 | ship |

Start with `edge` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
