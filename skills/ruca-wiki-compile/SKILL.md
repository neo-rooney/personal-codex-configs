---
name: ruca-wiki-compile
description: Use when the user explicitly asks to compile Ruca raw sources into entity or claim notes, or to update formal Ruca knowledge from approved project learning.
---

# Ruca Wiki Compile

Compile selected Ruca sources into evidence-bounded formal knowledge. Do not treat a source as a mandate to create a new note.

## Authorization and scope

Use this skill only after the user explicitly requests compilation, a formal note, or a Wiki update. Read the Ruca vault's `AGENTS.md`, `SCHEMA.md`, and `index.md` before changing the vault. The vault contract is authoritative.

## Workflow

1. Read the selected raw source and identify the exact propositions it supports. Keep source-specific observations separate from general facts.
2. Search related `entities/` and `claims/` notes before drafting. Decide whether each supported proposition strengthens an existing note, requires a new entity, requires a new claim, or should remain raw only.
3. Define an entity only to answer “what is it?” and a claim only to state one independently reviewable proposition. Do not create notes for repeated workflow steps or specimens.
4. Use the raw source as a bare wikilink in `sources`. A raw agent source can support its project's decision or verified observation, but it cannot by itself establish general factual, standards, legal, security, or performance claims. Obtain an appropriate authoritative source before making those claims.
5. Preserve raw sources without modification. Do not delete, move, merge, or substantially reduce existing formal notes without explaining the impact and receiving user approval.
6. Update `index.md` only when the core human navigation structure genuinely changes. Record each actual Wiki content or structure change in `log.md`.
7. Verify frontmatter, source cardinality, timestamps, direct wikilink resolution, and any changed index indentation before reporting the result.

## No-change outcome

If evidence is insufficient, the proposition duplicates an existing note without a meaningful strengthening, or the requested change would overstate the source, leave formal notes unchanged and explain why.
