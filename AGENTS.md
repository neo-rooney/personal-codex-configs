# Personal knowledge workflow

Ruca vault: `/Users/rooney/Library/Mobile Documents/iCloud~md~obsidian/Documents/ruca`

When existing personal knowledge materially helps a project task, search the Ruca `index.md` and only the related formal notes before relying on it.

Do not create Ruca raw sources automatically. When work reveals a reusable, evidence-backed learning—such as an unexpected failure cause, a repeatable mechanism, a non-obvious trade-off, or a reusable diagnostic procedure—first propose a raw capture with its learning and evidence. Create it only after the user explicitly approves that specific capture.

Ordinary implementation, file moves, refactoring, visual adjustment, routine test/build results, and one-off product choices are not raw-capture candidates. A request to complete project work or a prior capture approval does not authorize a new raw source.

Use `ruca-wiki-compile` only when the user explicitly asks to compile, formalize, or update Ruca Wiki knowledge. When reading or writing the vault, its `AGENTS.md` and `SCHEMA.md` take precedence.

---

# Documentation ID workflow

Project instructions and project documentation ID rules take precedence. When a project defines no ID rule, use these defaults consistently across its related documents:

- Requirements: `{FEATURE}-RQ-{NNN}`, for example `CONN-RQ-004`.
- Functional rules: `{FEATURE}-FR-{NNN}`, for example `CONN-FR-004`.
- Screen-design detail: `{FEATURE}-{PLATFORM}-SD-{NNN}`, for example `CONN-D-SD-001`.
- A screen-detail component: append `-{NN}` to its screen-detail ID, for example `CONN-D-SD-001-01`.

Use uppercase feature and platform abbreviations. Screen overviews show only screen titles and visuals; do not assign them IDs. Start each screen-detail heading with its ID in brackets, for example `[CONN-D-SD-001] 로그인 폼`.
