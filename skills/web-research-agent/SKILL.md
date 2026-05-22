---
name: web-research-agent
description: Autonomous web research — given a topic, searches, extracts, summarizes, and saves structured findings
category: research
---

# Web Research Agent

Full autonomous research pipeline. Give it a topic and it returns structured, saved research.

## Usage

```
/load web-research-agent
```

Then:
> "Research the latest developments in AI agent frameworks"
> "Find and summarize the top 5 articles on Solana DeFi in 2025"

## Research Pipeline

```
Topic Input
    │
    ▼
1. SEARCH — web_search(topic, limit=8)
    │  Queries multiple angles of the topic
    ▼
2. EXTRACT — web_extract(urls)
    │  Pulls full content from top results
    ▼
3. SYNTHESIZE — Condense into structured markdown
    │  Key findings, statistics, opposing views
    ▼
4. SAVE — Write to ~/research/<topic>/<date>.md
    │  Timestamped, organized, linkable
    ▼
5. REPORT — Present summary to user
```

## Output Format

```markdown
# Research: [Topic]
**Date:** 2025-01-01
**Sources:** 5 articles analyzed

## Key Findings
- Finding 1
- Finding 2

## Deep Dive
### [Article Title 1]
Summary of what this source says

### [Article Title 2]
...

## Sources
- [Title](url) — key takeaway
- [Title](url) — key takeaway

## Raw Files
Saved to: ~/research/topic/2025-01-01.md
```

## Configuration

Research output is saved to `~/research/` by default. To change:
```
/load web-research-agent
Tell the agent: "Save research to ~/my-research-folder/"
```

## Rate Limiting

The agent respects web source rate limits. For large research projects (10+ sources), the agent batches requests automatically.
