---
name: rddd-screen-design
description: Use when creating or revising screen-design documents, annotated UI wireframes, overview or detail SVGs, numbered callouts, state comparisons, and explanation tables from screenshots, UI code, or functional specifications.
---

# RDDD Screen Design

## Overview

Create screen-design documents whose structure and writing rules follow the current personal Ruca Wiki. Use native SVG wireframes to define screen structure and user-visible expressions.

## Authority and current guidance

1. Read the active global Codex instructions and resolve the current Ruca Vault location from them. Do not hard-code a Vault path in this skill.
2. Read the resolved Vault's `AGENTS.md`, `SCHEMA.md`, and `index.md`.
3. Use `index.md` to locate and read only the formal notes directly related to screen-design documents, including their purpose, canonical outline, screen overview, common UI areas, screen detail, and functional-requirement boundaries.
4. Apply the current Wiki guidance every time. Do not rely on an outline or writing rule from a previous invocation.
5. If the Vault path or required guidance cannot be resolved, say what is unavailable and ask for the missing direction before drafting or restructuring a screen-design document.

For the screen's facts and decisions, use this priority order:

1. The user's current instructions
2. The active project's SoT, functional specification, verified UI code, and supplied screenshots
3. The Ruca Wiki's general documentation principles

The Wiki governs the document's structure and writing boundaries. It does not override project-specific behavior, labels, or user decisions.

## Canonical outline

- Determine the canonical outline from the current Wiki guidance before drafting.
- When the user provides a document or a fixed outline, preserve it unless the user explicitly requests an outline change. Treat it as the project-level application of the Wiki rule.
- Add only headings allowed by that outline. Do not add a summary, assumptions, implementation plan, appendix, or checklist on your own.
- If a necessary concept has no permitted section, explain the conflict and propose the smallest outline change in chat. Wait for approval before modifying the outline.

## Default screen-document form

Use the project's format when it exists. If it does not, structure a platform section in this order:

```markdown
## {platform}
### {n}.1 화면 개요
#### {screen name}
<whole-screen wireframe>

### {n}.2 화면 상세
##### {n}.2.1 {area name}
<focused wireframe>
###### {FEATURE}-{PLATFORM}-SD-{NNN}-{component-name}
| 번호 | 표시내용 | 관련 요구사항 |
```

- The overview has no screen ID. It shows the normal whole-screen composition and names only the product-relevant areas.
- A numbered detail section groups one visual area. Give an individual ID only to a component, control, or visible state that another document must reference.
- Put the component ID immediately above its table. `번호` matches the red callout number in the detail wireframe; `관련 요구사항` links the owning functional requirement or uses `-` when none applies.
- Use the project's feature and platform abbreviations. Do not invent abbreviations when the project has not defined them.

## Workflow

1. Inspect the target functional specification, current UI code, and supplied screenshots. Treat explicit user decisions as authoritative and report material conflicts.
2. Identify the screen's related functional requirements. Do not define a new input rule, execution condition, or failure policy in the screen-design document; return it to the functional specification first.
3. Decide the visual level:
   - Use an overview wireframe for major regions only.
   - Use an enlarged detail wireframe when internal controls or visual states matter.
   - Compare normal, warning, error, loading, empty, or disabled states when appearance changes materially.
4. Read [references/wireframe-style.md](references/wireframe-style.md), then adapt the closest asset:
   - [annotated-overview-example.svg](assets/annotated-overview-example.svg)
   - [state-variants-example.svg](assets/state-variants-example.svg)
   - [form-section-example.svg](assets/form-section-example.svg)
5. Create or edit the SVG with `apply_patch`. Preserve the design tokens and red numbered-callout system from the reference. If the user permits reuse of an existing image, copy or reference it unchanged rather than rebuilding it.
6. Add the image at `width="70%"`. For each callout, use the project form; otherwise use the component ID and `번호` / `표시내용` / `관련 요구사항` table from the default form.
7. Follow the project's document ID convention when one exists. Otherwise use the default form above. Platform abbreviations are project-defined. Use the same IDs in later test scenarios.
8. Put exact user-visible labels, messages, icons, visibility, initial display source, and visible enabled, disabled, loading, empty, success, and error expressions in the screen-design document. Link related functional requirements instead of repeating their behavioral conditions.
9. If a displayed product value must equal a protocol value, ensure the functional specification defines that consistency first, then link that requirement from the component detail.
10. Run `scripts/validate-wireframes.sh <svg...>` and inspect every new or modified rendered SVG preview before reporting completion.

## Annotation Contract

- Number major regions in overviews; number meaningful controls or states in details.
- Treat a label and its value/control as one item unless they have independent behavior.
- Do not number the same shared platform chrome again on every screen.
- Keep callouts outside important text and controls. Every number must have exactly one table row.
- Use separate variants instead of explaining visually different states only in prose.
- Distinguish persistent validation states from transient input feedback. Place each message only where the product displays it.

## Screen-design writing rules

- In the screen overview, show the default whole-screen layout without loading, warning, or error variants. Name meaningful areas so later details refer to the same UI target.
- Define repeating headers, inputs, loading, and error expressions once in the common-area section. In a screen detail, define only the area-specific label, value, layout, and which common state it uses.
- Put labels, placeholders, messages, icons, and visible enabled, disabled, loading, empty, success, and error expressions in this document.
- Put a `관련 요구사항` link near a screen area when its visible state is determined by a functional requirement. Do not restate validation ranges, save conditions, retry policy, or other behavioral rules here.
- When a project has a shared terminology document, link every occurrence of a shared term inline. Do not add a terms table that only repeats terminology links.
- When an input's initial value comes from configuration, environment, or persisted settings, document that source or the empty state; do not turn a sketch's sample value into the product requirement.
- Keep visible error strings and visible states here, but do not add global error-message governance or a new error category that the functional specification does not define.
- Remove tables that merely repeat the image, functional specification, or adjacent bullets.

## Common Mistakes

| Mistake | Correction |
| ------- | ---------- |
| Numbering labels and values separately | Combine them into one semantic field |
| Copying a full screenshot into every detail | Crop conceptually with a focused SVG detail |
| Giving an ID to an overview or area heading | Give IDs only to individually referenceable components or visible states |
| Writing a sample input value as the initial-value requirement | State the actual configuration source or empty state and link its functional requirement |
| Repeating standard platform UI | Document only the product-relevant behavior |
| Mixing inline input errors with header validation | Classify by persistence and actual display location |
| Writing exact messages in every specification | Keep exact strings in the screen-design document |
| Trusting valid XML without looking at it | Render and visually inspect every SVG |
