---
name: ruca-raw-capture
description: Propose preserving a verified, reusable project learning as a Ruca raw source; create it only after the user explicitly approves that specific capture.
---

# Ruca Raw Capture

Preserve a verified, reusable project learning as evidence-rich source material after the user approves the specific capture. Raw capture is not formal knowledge compilation.

## Scope

Default to no capture. A candidate must contain a learning that can inform a future project and direct evidence for it. Suitable candidates include an unexpected failure cause, a repeatable mechanism, a non-obvious trade-off and rationale, or a reusable diagnostic procedure.

Do not propose ordinary implementation, file moves, refactoring, visual adjustment, routine test/build results, elapsed time, retries, unverified speculation, or one-off product choices. A completed task or approval of a previous raw note does not authorize a new capture.

## Workflow

1. Identify the candidate learning and its direct evidence.
2. Propose capture concisely: state the learning, why it is reusable, and the evidence to preserve. Ask for explicit approval of this capture.
3. If the user does not explicitly approve, make no Ruca write. Continue the project task without treating silence, task completion, or prior approval as authorization.
4. After approval, read the Ruca vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`. Treat them as authoritative.
5. Search `raw/agents/` and related formal notes for an existing source that already covers the learning. Do not append to or revise raw sources.
6. If the learning is already covered, make no new raw write and explain why.
7. Otherwise, create one new note in `raw/agents/` titled `YYYY-MM-DD - <project> - <work unit>.md`.
8. Preserve the work unit's context, the reusable learning, direct evidence (for example code location, command/test outcome, or cited source), scope and limitations, and unresolved follow-up. Mark inference as inference.
9. Do not create or modify `entities/`, `claims/`, or `index.md`. Do not turn source-specific observations into general facts.
10. Leave the raw note unchanged after creation. If the vault contract requires it, add the actual raw change to `log.md`.

## Boundary

This skill is authorized only when the active global Ruca workflow permits raw capture. Formal notes always require the user's explicit compilation request.
