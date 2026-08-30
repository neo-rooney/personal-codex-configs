# Personal knowledge workflow

Ruca vault: `/Users/rooney/Library/Mobile Documents/iCloud~md~obsidian/Documents/ruca`

When existing personal knowledge materially helps a project task, search the Ruca `index.md` and only the related formal notes before relying on it.

Do not create Ruca raw sources automatically. When work reveals a reusable, evidence-backed learning—such as an unexpected failure cause, a repeatable mechanism, a non-obvious trade-off, or a reusable diagnostic procedure—first propose a raw capture with its learning and evidence. Create it only after the user explicitly approves that specific capture.

Ordinary implementation, file moves, refactoring, visual adjustment, routine test/build results, and one-off product choices are not raw-capture candidates. A request to complete project work or a prior capture approval does not authorize a new raw source.

Use `ruca-wiki-compile` only when the user explicitly asks to compile, formalize, or update Ruca Wiki knowledge. When reading or writing the vault, its `AGENTS.md` and `SCHEMA.md` take precedence.

---

# Functional specification workflow

Project instructions and project documentation ID rules take precedence. When a project defines no feature-document rule, use these defaults consistently across its related documents:

- Do not create a standalone requirements-definition document. Use a functional specification as the feature's source of truth.
- The default functional specification sections are: document purpose, feature goals, scope (included and excluded), state definition, user flows, and functional requirements. Write `- 상태 없음` when the feature defines no state.
- User flows describe user-visible steps only. Put internal decision rules, ownership, conditions, and outcomes in functional requirements.
- Functional requirements use `{FEATURE}-FR-{NNN}`, for example `BO-FR-001`.
- Functional requirements and related documents may be shared or platform-specific. For a platform-specific item, insert `{PLATFORM}` after `{FEATURE}`, for example `BO-D-FR-001`.
- Screen-design detail uses `{FEATURE}-{PLATFORM}-SD-{NNN}`, for example `BO-D-SD-001`.
- A screen-detail component appends `-{NN}` to its screen-detail ID, for example `BO-D-SD-001-01`.

Use two-character uppercase feature abbreviations for new documents and let each project define its platform abbreviations. Preserve established legacy IDs until the project explicitly migrates them. Screen overviews show only screen titles and visuals; do not assign them IDs. Start each screen-detail heading with its ID in brackets, for example `[BO-D-SD-001] 로그인 폼`.

---

# Documentation terminology workflow

Project instructions and an existing project terminology convention take precedence.

- When a project maintains a shared terminology document, link every occurrence of a shared term inline. Do not add a separate terms section or table that only repeats links.
- In Markdown documents shared through Obsidian and GitLab, write terminology headings and their fragments with hyphenated terms, for example `## 사용자-설정`, and use standard relative Markdown links with readable link text, for example `[사용자 설정](../TERMINOLOGY.md#사용자-설정)`.
- Add a local definition only when the project requires a self-contained document or the shared terminology document does not cover the term.

---

# Feature documentation workflow

Project instructions, document outlines, and document-ID conventions take precedence.

- Treat a feature's functional specification as the source of truth for its behavior. Before drafting a related screen design, system design, interface definition, or test specification, read that functional specification and the feature index when present.
- Preserve a project's numbered heading hierarchy. Use hyphenated document IDs and heading fragments when they are used as Markdown link targets.
- Keep each document within its responsibility: functional specifications define behavior, screen designs define visible expressions, system designs define participant flow, interface definitions define contracts, and test specifications define regression cases.
