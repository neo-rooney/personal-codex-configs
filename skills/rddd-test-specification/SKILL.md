---
name: rddd-test-specification
description: "Use when drafting or revising software test-specification documents that trace functional requirements to unit, integration, or E2E test cases. Do not use for implementation of test code, functional specifications, system designs, or screen designs."
---

# RDDD Test Specification

Draft test-specification documents that make functional requirements executable as focused regression cases.

## Authority and current guidance

1. Read the active global Codex instructions and resolve the current Ruca Vault location from them. Do not hard-code a Vault path in this skill.
2. Read the resolved Vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`.
3. Use `index.md` to locate and read only formal notes directly related to unit tests, integration tests, E2E tests, and test scenarios.
4. Read the target functional specification first. Read the applicable screen design, system design, and interface definition only for behavior that they establish.
5. Use this priority order for facts and decisions: the user's current instructions, project SoT and verified implementation evidence, then Ruca Wiki documentation principles.

## Test-case rules

1. Preserve a user-provided or project-defined outline. When none exists, use `문서 목적`, then platform test-case sections.
2. Give each case a functional test ID in the project convention. When headings are used as link targets, use hyphens between the ID and Korean title words.
3. Every case contains: linked `검증 대상 요구사항`, `검증 레이어`, `사전 조건`, `수행`, and `기대 결과`.
4. A functional requirement can have many test cases. Link every case to the requirement it proves; an interface definition describes the contract used by a case and is not a separate requirement to test.
5. State concrete inputs and observable expected values. Do not write an implementation action such as “a method is called” as the expected result when a returned, stored, or displayed value can be asserted.
6. Do not create a case for an unspecified absence, error, validation rule, or fallback. First add the expected behavior to the functional specification or ask the user to decide it.
7. For a host-provided initial value, keep the host retrieval-and-return case separate from the GUI mapping-and-display case. Verify values the user can observe or later act on, not static layout alone.

## Validation layers

1. Use `GUI` for a renderer-only responsibility and `Electron` for a Desktop main-process or host responsibility.
2. Use `GUI ↔ Electron 통합` when the test verifies the real collaboration from Electron result through GUI outcome, while controlling dependencies outside that boundary.
3. Use `E2E` only when an actual client runtime and user interaction path are executed. Do not label a controlled GUI–Electron integration test as E2E merely because it describes a user journey.
4. Keep a GUI or Electron unit case when it owns a distinct rule. Add a single integration case for a meaningful cross-boundary user outcome; do not replace the lower-layer cases solely because an integration case exists.

## Boundaries

1. This skill drafts or revises test-specification documents. It does not implement test code, modify production code, or run application tests unless the user separately asks.
2. Do not modify the Ruca Vault while using this skill. Updating formal Wiki knowledge requires an explicit request and the applicable Vault workflow.
