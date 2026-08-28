# Wireframe Style

## Visual tokens

Use a neutral light wireframe with one annotation color.

| Token | Value | Use |
| ----- | ----- | --- |
| Page | `#f4f4f4` | Canvas background |
| Surface | `#ffffff` with `#555555` 2px stroke | Panels and sections |
| Subtle | `#e8e8e8` with `#777777` 2px stroke | Headers and selected areas |
| Input | `#fafafa` with `#888888` 2px stroke | Fields and controls |
| Text | `#222222` or `#444444` | Labels and values |
| Callout | `#d52b2b` with white 4px stroke | Numbered annotations |
| Warning | `#9a6700` | Warning icon and message |
| Error | `#c62828` | Error icon and message |

Use a common sans-serif font, 18–25px text, and 20px callout circles. Set `role="img"`, `<title>`, and `<desc>` on every SVG.

## Composition rules

- Preserve the target UI's relative layout, not its exact pixels.
- Keep the canvas tightly fitted around the wireframe without clipping.
- Align labels, controls, and repeated rows to shared guides.
- Show representative values that explain the field without implying fixed product data.
- Use solid outlines and simple geometric icons; do not introduce decorative illustration.
- Place callouts near the upper-left boundary of the annotated concept when possible.

## Overview versus detail

An overview names large regions such as editor tab, header, metadata section, toolbar, list, and screen tabs. It does not enumerate every label, button, or table column.

A detail enlarges one region and numbers only concepts that need separate display or behavior rules. A label and input normally share one number. Split them only when the label itself changes state or has a separate action.

## State variants

Show variants in one SVG when users need to compare them. Label each row or panel with its state. A normal state can intentionally omit status icons and messages; the absence is part of the design.

Keep exact messages in a state-message table with columns appropriate to the product, such as type, condition, and message. Put priority and aggregation rules in bullets below the table.

## Documentation checks

- Every SVG callout appears once in the adjacent table.
- Every table callout exists in the SVG.
- Exact UI strings are absent from requirements and functional specifications unless the string itself is a contractual requirement.
- Shared platform behavior is referenced, not redrawn, unless its visual state is necessary to explain the feature.
- Visibility and read-only conditions come from requirements or code rather than assumptions.
