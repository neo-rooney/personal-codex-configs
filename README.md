# Personal Codex Configs

개인 Codex 전역 지침과 재사용 스킬을 하나의 저장소에서 관리합니다.

회사 컴퓨터와 집 컴퓨터에서는 이 저장소 하나만 clone한 뒤, 지침과 스킬을 함께 동기화합니다.

## 구성

```text
.
├── AGENTS.md
├── README.md
└── skills/
    ├── rddd-requirements-specification/
    ├── rddd-screen-design/
    ├── ruca-raw-capture/
    └── ruca-wiki-compile/
```

## 전역 지침

`AGENTS.md`는 개인 지식과 Ruca Vault를 사용하는 방법을 정의합니다.

- 기본 Ruca Vault 경로
- 개인 지식 검색 원칙
- raw source 캡처 및 Wiki compile 사용 조건
- Vault를 검색하지 않아야 하는 일반 작업 범위

## 포함된 스킬

| 스킬 | 용도 |
| --- | --- |
| `rddd-requirements-specification` | Ruca Wiki 원칙과 프로젝트 사실을 바탕으로 요구사항 명세 작성 |
| `rddd-screen-design` | 화면 설계서, SVG 와이어프레임, 상태별 화면과 설명 표 작성 |
| `ruca-raw-capture` | 승인된 재사용 학습의 근거를 Ruca raw source로 보존 |
| `ruca-wiki-compile` | 승인된 raw source를 Ruca의 entity·claim 지식으로 정리 |

## 새 컴퓨터 설정

### 1. 저장소 clone

```bash
mkdir -p ~/personal
git clone https://github.com/neo-rooney/personal-codex-configs.git \\
  ~/personal/personal-codex-configs
```

### 2. 전역 지침 연결

Codex가 전역 `AGENTS.md`를 읽을 수 있도록 홈 경로에 연결합니다.

```bash
mkdir -p ~/.codex
ln -sfn ~/personal/personal-codex-configs/AGENTS.md ~/.codex/AGENTS.md
```

### 3. 스킬 설치

저장소 안의 모든 스킬을 Codex 전역 스킬로 설치합니다.

```bash
npx skills add ~/personal/personal-codex-configs \\
  --global \\
  --agent codex \\
  --yes
```

설치 상태 확인:

```bash
npx skills list -g
```

## 다른 컴퓨터에서 업데이트

집이나 회사 컴퓨터에서 다음 명령을 실행합니다.

```bash
git -C ~/personal/personal-codex-configs pull --ff-only
npx skills update -g
```

첫 번째 명령은 지침과 스킬 원본을 갱신하고, 두 번째 명령은 Codex에 설치된 전역 스킬을 갱신합니다.

저장소 기준으로 스킬을 다시 설치해야 하는 경우:

```bash
npx skills add ~/personal/personal-codex-configs \\
  --global \\
  --agent codex \\
  --yes
```

## 변경 반영 절차

1. `skills/<skill-name>/` 또는 `AGENTS.md`를 수정합니다.
2. 변경 내용을 확인합니다.
3. 통합 저장소에 commit하고 push합니다.
4. 다른 컴퓨터에서 `git pull --ff-only`를 실행합니다.
5. Codex 스킬이 갱신되지 않았으면 `npx skills update -g`를 실행합니다.

```bash
cd ~/personal/personal-codex-configs
git status
git add AGENTS.md README.md skills
git commit -m "chore: 개인 Codex 설정 통합"
git push origin main
```

## 운영 원칙

- 개인 지침과 개인 스킬은 이 저장소에서만 Git으로 관리합니다.
- 각 스킬을 별도의 Git 저장소로 clone하거나 관리하지 않습니다.
- 스킬은 프로젝트 저장소에 복사하지 않고 전역으로 설치합니다.
- 개인 지침이나 스킬 변경은 다른 컴퓨터에 반영하기 전에 commit하고 push합니다.
- Codex가 읽는 지침과 스킬에는 비밀번호, API key, 토큰 등 비밀정보를 넣지 않습니다.
- Ruca Vault의 실제 내용은 이 저장소에 포함하지 않습니다.
- Ruca raw source는 자동으로 만들지 않습니다. 새로 확인한 재사용 가능한 학습과 근거를 먼저 제안하고, 사용자가 해당 기록을 명시적으로 승인한 경우에만 보존합니다.
