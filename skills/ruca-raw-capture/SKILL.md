---
name: ruca-raw-capture
description: Use when a completed project work unit produces reusable decisions, verified results, failure causes, or mechanisms that should be preserved as a Ruca raw source.
---

# Ruca Raw Capture

Preserve a work unit's reusable learning as evidence-rich source material. Raw capture is not formal knowledge compilation.

## Scope

Use this after a meaningful work unit, not for ordinary progress updates. Capture only learning that can inform a future project: a decision and its rationale, a verified result, a failure cause, or a mechanism. Do not capture routine edits, elapsed time, retries, or unverified speculation.

## Workflow

1. Read the Ruca vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`. Treat them as authoritative.
2. Search `raw/agents/` and related formal notes for an existing source that already covers the work unit. Do not append to or revise raw sources.
3. If no reusable learning emerged, make no Ruca write and report that outcome briefly.
4. Otherwise, create one new note in `raw/agents/` titled `YYYY-MM-DD - <project> - <work unit>.md`.
5. Preserve the work unit's context, the reusable learning, direct evidence (for example code location, command/test outcome, or cited source), scope and limitations, and unresolved follow-up. Mark inference as inference.
6. Do not create or modify `entities/`, `claims/`, or `index.md`. Do not turn source-specific observations into general facts.
7. Leave the raw note unchanged after creation. If the vault contract requires it, add the actual raw change to `log.md`.

## Boundary

This skill is authorized only when the active global Ruca workflow permits raw capture. Formal notes always require the user's explicit compilation request.
