---
name: github-automation
description: Automated GitHub workflows — issue labeling, release notes, milestone syncing, reviewer assignment
category: devops
---

# GitHub Automation

Take the tedium out of repo maintenance. Auto-label issues, generate release notes, and more.

## Prerequisites

- `gh` CLI installed and authenticated (`gh auth status` to check)
- Hermes with terminal access to your repos

## Usage

```
/load github-automation
```

Then:
> "Auto-label all new issues in my repo"
> "Generate release notes from the last 20 commits"
> "Sync milestones between frontend and backend repos"

## Features

### 1. Auto-Label Issues
Scans new issues and applies labels based on content:
| Keyword | Label |
|---------|-------|
| bug, crash, error | `bug` |
| feature, request, want | `enhancement` |
| docs, readme, documentation | `documentation` |
| security, vulnerability | `security` |
| help, question | `question` |

**Setup:**
```bash
# Create a cron job to check for unlabeled issues every hour
hermes cron create \
  --schedule "0 * * * *" \
  --skills "github-automation" \
  --prompt "Scan my repo for unlabeled issues and apply auto-labels"
```

### 2. Release Notes Generator
Generate clean release notes from commit history:
> "Generate release notes from main since v1.2.0"

Output format:
```markdown
## v1.3.0 — 2025-01-15

### 🚀 Features
- New dashboard theme system (#42)

### 🐛 Bug Fixes
- Fixed login timeout (#38)

### 📚 Documentation
- Updated README (#40)
```

### 3. Milestone Syncing
Keep milestones aligned across multiple repos:
> "Sync milestones between hermes-agent and hermes-dashboard"

### 4. Smart Reviewer Assignment
Auto-assigns reviewers based on which files were changed:
| File Pattern | Reviewer |
|-------------|----------|
| `src/ui/*` | frontend-team |
| `src/api/*` | backend-team |
| `*.md` | docs-team |

## Troubleshooting

- **"gh not found"**: Install GitHub CLI: `sudo apt install gh` then `gh auth login`
- **"Permission denied"**: Ensure your token has `repo` scope
- **Rate limiting**: Free GitHub accounts have 60 req/hr for unauthenticated API calls
