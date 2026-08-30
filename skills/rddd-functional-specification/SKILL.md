---
name: rddd-functional-specification
description: "Draft or revise software functional specifications using the current Ruca Wiki principles and project sources of truth. Use for feature goals, scope, states, user flows, functional requirements, and functional IDs; not for standalone requirements definitions, design, or implementation plans."
---

# RDDD Functional Specification

Create functional specifications whose structure and writing rules follow the current personal Ruca Wiki, while treating the active project's sources of truth as authoritative for product facts.

## Authority and current guidance

1. Read the active global Codex instructions and resolve the current Ruca Vault location from them. Do not hard-code a Vault path in this skill.
2. Read the resolved Vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`.
3. Use `index.md` to locate and read only the formal notes directly related to functional specifications, such as their principles, canonical outline, scope definition, terminology, state definitions, user flows, functional requirements, or document-ID rules.
4. Apply the current Wiki guidance every time. Do not copy its outline or rules into a project document or rely on a previous invocation's version.
5. If the Vault path or required guidance cannot be resolved, say what is unavailable and ask for the missing direction before drafting or restructuring a functional specification.

For the specification's facts and decisions, use this priority order:

1. The user's current instructions
2. The active project's SoT, product contracts, and verified implementation evidence
3. The Ruca Wiki's general documentation principles

The Wiki governs how to structure and write the document. It does not override project-specific scope, contracts, or user decisions.

## Canonical outline

1. Determine the canonical outline from the current Wiki guidance before drafting.
2. When the user provides a document or a fixed outline, preserve it unless the user explicitly requests an outline change. Treat it as the project-level application of the Wiki rule.
3. When a project has no established outline, use: `문서 목적`, `기능 목표`, `기능 범위` (포함 범위와 제외 범위), `상태 정의`, `사용자 흐름`, `기능 요구사항`.
4. Write `- 상태 없음` when the feature does not define a state.
5. Add only headings allowed by that outline. Do not add a summary, assumptions, appendix, checklist, design section, or other helpful-looking section on your own.
6. If a necessary concept has no permitted section, explain the conflict and propose the smallest outline change in chat. Wait for approval before modifying the outline.

## Workflow

1. Identify the document's purpose, feature boundary, and authoritative project sources.
2. Establish included and excluded scope before defining functional requirements. Define exclusions as responsibility boundaries: include only behavior that could reasonably be mistaken for this feature but belongs to another responsibility. Do not use exclusions as an inventory of features planned for later or of self-evident external-system implementation responsibilities.
3. Settle ambiguous terms before using them in the feature goals, scope, or functional requirements. When the project has a shared terminology document, link every occurrence of each shared term inline; do not add a terms section that only repeats links. Add a local terms section only when required by the project's canonical outline or when a local definition is necessary.
4. Define the feature's state only when it has a meaningful stored or transitioned state. Otherwise record `상태 없음`.
5. Describe only user-visible flows in `사용자 흐름`; place internal conditions, decisions, and ownership in functional requirements.
6. List functional-requirement IDs and titles before expanding them when the user is still deciding the boundary.
7. Write functional requirements only after the relevant boundary and terms are settled.
8. Re-read the completed document against the canonical outline, project SoT, and user decisions. Remove unsupported additions and duplicated responsibility.

## Functional-requirement writing rules

1. Do not create a separate requirements-definition document or `RQ` IDs. The functional specification is the feature's authoritative document.
2. Follow the project's document-ID convention when one exists. Otherwise identify shared functional requirements as `{FEATURE}-FR-{NNN}` and platform-specific functional requirements as `{FEATURE}-{PLATFORM}-FR-{NNN}`. Use a two-character uppercase feature abbreviation for new documents and preserve existing legacy IDs until explicitly migrated.
3. State externally observable behavior, conditions, outcomes, and ownership. Do not turn a preferred implementation, file name, framework, or internal helper into a functional requirement unless it is an actual contract.
4. Do not invent protocol fields, error handling, defaults, time limits, policies, or product behavior. Mark an unknown as needing confirmation instead of guessing.
5. Keep one functional-requirement ID focused on one responsibility. Split only when the resulting requirements can be verified independently.
6. Distinguish normal flow, explicit user action, unexpected failure, and later feature responsibilities when the distinction affects behavior.
7. Use the project's language and terminology consistently. For Korean documents, write formal Korean and define terms in concise noun-phrase style unless the project convention requires otherwise.
8. Preserve explicit exclusions. Do not restate implementation details from excluded features merely because they share a component or transport layer.

## Boundaries

1. This skill drafts or revises functional specifications. It does not create a standalone requirements-definition document, architecture design, implementation plan, test plan, or code unless the user separately asks.
2. Do not modify the Ruca Vault while using this skill. Updating formal Wiki knowledge requires an explicit request and the applicable Vault workflow.
3. When the user separately continues from a functional specification to a system-design document, read the project's participant convention. Include only elements that directly participate in the feature, and propose any participant outside the project's baseline before adding it.
