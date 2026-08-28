---
name: rddd-requirements-specification
description: "Draft or revise software requirements specifications using the current Ruca Wiki principles and project sources of truth. Use for requirements documents, scope definition, terms, and requirement IDs; not for design or implementation plans."
---

# RDDD Requirements Specification

Create requirements specifications whose structure and writing rules follow the current personal Ruca Wiki, while treating the active project's sources of truth as authoritative for product facts.

## Authority and current guidance

1. Read the active global Codex instructions and resolve the current Ruca Vault location from them. Do not hard-code a Vault path in this skill.
2. Read the resolved Vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`.
3. Use `index.md` to locate and read only the formal notes directly related to requirements specifications, such as their principles, canonical outline, scope definition, terminology, or requirement-writing rules.
4. Apply the current Wiki guidance every time. Do not copy its outline or rules into a project document or rely on a previous invocation's version.
5. If the Vault path or required guidance cannot be resolved, say what is unavailable and ask for the missing direction before drafting or restructuring a requirements specification.

For the specification's facts and decisions, use this priority order:

1. The user's current instructions
2. The active project's SoT, product contracts, and verified implementation evidence
3. The Ruca Wiki's general documentation principles

The Wiki governs how to structure and write the document. It does not override project-specific scope, contracts, or user decisions.

## Canonical outline

- Determine the canonical outline from the current Wiki guidance before drafting.
- When the user provides a document or a fixed outline, preserve it unless the user explicitly requests an outline change. Treat it as the project-level application of the Wiki rule.
- Add only headings allowed by that outline. Do not add a summary, assumptions, appendix, checklist, design section, or other helpful-looking section on your own.
- If a necessary concept has no permitted section, explain the conflict and propose the smallest outline change in chat. Wait for approval before modifying the outline.

## Workflow

1. Identify the document's purpose, feature boundary, and authoritative project sources.
2. Establish included and excluded scope before defining detailed requirements. Keep adjacent feature responsibilities out of scope rather than duplicating them.
3. Define terms before using them in detailed requirements when ambiguity would otherwise exist.
4. List requirement IDs and titles before expanding them when the user is still deciding the boundary.
5. Write detailed requirements only after the relevant boundary and terms are settled.
6. Re-read the completed document against the canonical outline, project SoT, and user decisions. Remove unsupported additions and duplicated responsibility.

## Requirement-writing rules

- Follow the project's document ID convention when one exists. Otherwise identify shared requirements as `{FEATURE}-RQ-{NNN}` and platform-specific requirements as `{FEATURE}-{PLATFORM}-RQ-{NNN}`. Retain the same IDs in related functional specifications, screen designs, and test scenarios. Platform abbreviations are project-defined.
- State externally observable behavior, conditions, outcomes, and ownership. Do not turn a preferred implementation, file name, framework, or internal helper into a requirement unless it is an actual contract.
- Do not invent protocol fields, error handling, defaults, time limits, policies, or product behavior. Mark an unknown as needing confirmation instead of guessing.
- Keep one requirement ID focused on one responsibility. Split only when the resulting requirements can be verified independently.
- Distinguish normal flow, explicit user action, unexpected failure, and later feature responsibilities when the distinction affects behavior.
- Use the project's language and terminology consistently. For Korean documents, write formal Korean and define terms in concise noun-phrase style unless the project convention requires otherwise.
- Preserve explicit exclusions. Do not restate implementation details from excluded features merely because they share a component or transport layer.

## Boundaries

- This skill drafts or revises requirements specifications. It does not create an architecture design, implementation plan, test plan, or code unless the user separately asks.
- Do not modify the Ruca Vault while using this skill. Updating formal Wiki knowledge requires an explicit request and the applicable Vault workflow.
