---
name: rddd-system-design
description: "Draft or revise software system-design documents using current Ruca Wiki principles and project sources of truth. Use for participant responsibilities and system-flow diagrams; not for functional specifications, screen designs, or implementation plans."
---

# RDDD System Design

Create focused system-design documents from an approved functional specification and the active project's design conventions.

## Authority and current guidance

1. Read the active global Codex instructions and resolve the current Ruca Vault location from them. Do not hard-code a Vault path in this skill.
2. Read the resolved Vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`.
3. Use `index.md` to locate and read only formal notes directly related to system-design documents, including their purpose, participant responsibilities, whole-system structure, and responsibility boundaries.
4. Read the target functional specification and applicable project instructions before drafting. Project-specific participant conventions take precedence over this skill.
5. Use this priority order for facts and decisions: the user's current instructions, project SoT and verified implementation evidence, then Ruca Wiki documentation principles.

## Default document structure

1. Preserve a user-provided or project-defined outline.
2. When no outline is defined, use `문서 목적`, then one section for each platform, and under each platform use `참여 요소와 책임` and `전체 시스템 구조`.
3. Keep only these sections unless the user explicitly requests additional design concerns such as state ownership or failure handling.

## Participant rules

1. Start from the project-defined participant baseline. For BXCA, inspect user, GUI, Electron, local file system, and Agent Server as candidates.
2. Include only an element that directly participates in the feature's current scope. Omit a baseline candidate that has no interaction or responsibility in that feature.
3. Do not introduce an additional participant, such as a database, external service, queue, or internal component, without first explaining why it is needed and receiving the user's explicit approval.
4. Write the table with `참여 요소` and `담당 책임` only, unless the user asks for another column.
5. Describe each responsibility as the feature role it performs. Do not list an implementation file, helper, or framework as a participant solely because it exists in the codebase.

## Whole-system structure rules

1. Use a sequence diagram to show the direct participants and the feature flow in time order.
2. Show branches with `alt` only when the resulting feature flow differs materially.
3. Do not include a participant or external interaction that is outside the current functional scope.
4. Do not add prose that merely repeats the diagram.
5. Describe platform-neutral responsibilities and transferred values in the diagram. Keep concrete framework APIs and internal helper names out unless they are an approved interface contract.

## Boundaries

1. This skill drafts or revises system-design documents. It does not create a functional specification, screen design, interface definition, implementation plan, or code unless the user separately asks.
2. Do not modify the Ruca Vault while using this skill. Updating formal Wiki knowledge requires an explicit request and the applicable Vault workflow.
