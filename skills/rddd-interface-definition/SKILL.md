---
name: rddd-interface-definition
description: "Use when drafting or revising a software interface-definition document for common data contracts or platform-specific component communication. Do not use for functional specifications, system designs, screen designs, or implementation plans."
---

# RDDD Interface Definition

Draft focused interface-definition documents from an approved functional specification and the active project's interface conventions.

## Authority and current guidance

1. Read the active global Codex instructions and resolve the current Ruca Vault location from them. Do not hard-code a Vault path in this skill.
2. Read the resolved Vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`.
3. Use `index.md` to locate and read only formal notes directly related to interface-definition documents, including common data, client state, and external integration contracts.
4. Read the target functional specification, applicable system design, and project instructions before drafting. The project-defined document outline and conventions take precedence over this skill.
5. Use this priority order for facts and decisions: the user's current instructions, project SoT and verified implementation evidence, then Ruca Wiki documentation principles.

## Drafting rules

1. Preserve a user-provided or project-defined outline. When none exists, begin with `문서 목적`, `공통 데이터 형식`, then platform sections.
2. Define a common data type only when multiple products or components actually share it. Keep a platform-only request or response in that platform section.
3. For a platform communication contract, state the contract name, communication method, call type, input, response, and role. Use a table when it makes those fields easier to compare.
4. Record only the contracts, fields, and semantics that the functional specification, system design, user, or verified implementation has established. Do not infer or invent a contract name, payload field, error, event, route, or external interaction.
5. A document may be an initial draft. Keep undefined sections absent or explicitly pending instead of filling them with speculative detail.

## Platform communication guidance

1. For Desktop GUI ↔ Electron, identify Electron IPC as the transport and identify request–response calls as RPC when that contract is present.
2. For VS Code GUI ↔ Extension, describe the actual Webview message transport and its request–response correlation only when defined.
3. For Web Chat, do not create a host-boundary contract solely to mirror Desktop or VS Code. Add an interface only for a direct contract in the feature scope.
4. Add an Electron ↔ Agent Server or other counterpart section only when that interaction directly belongs to the feature's current scope.

## Boundaries

1. This skill drafts or revises interface-definition documents. It does not create a functional specification, system design, screen design, implementation plan, or code unless the user separately asks.
2. Do not modify the Ruca Vault while using this skill. Updating formal Wiki knowledge requires an explicit request and the applicable Vault workflow.
