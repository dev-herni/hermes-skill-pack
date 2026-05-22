---
name: smart-scheduler
description: Cron-based automation for recurring Hermes tasks — daily briefings, website monitoring, weekly digests
category: productivity
---

# Smart Scheduler

Automate recurring tasks with cron so Hermes runs on autopilot.

## Installation

This skill is pre-installed if you used the Premium Skill Pack installer. Otherwise, copy this file to `~/.hermes/skills/smart-scheduler/SKILL.md`.

## Usage

Load the skill:
```
/load smart-scheduler
```

Then tell the agent what you want scheduled:

> "Set up a daily briefing at 8 AM"
> "Check my website every 30 minutes"
> "Send me a weekly digest every Monday"

## Pre-built Templates

### 1. Daily Briefing at 8:00 AM
```yaml
# cron: "0 8 * * *"
# skills: [daily-briefing, web-research-agent]
# prompt: |
#   Generate today's briefing. Check the weather, latest news,
#   and any calendar events. Format as a clean digest.
```

### 2. Website Uptime Check (every 30 min)
```yaml
# cron: "*/30 * * * *"
# prompt: |
#   Check if https://example.com is accessible.
#   If it's down, alert me. If it's back up after being down, celebrate.
```

### 3. Weekly Digest (Monday 9 AM)
```yaml
# cron: "0 9 * * 1"
# skills: [web-research-agent]
# prompt: |
#   Summarize the top 5 AI/tech news stories from this week.
#   Keep it concise — bullet points with links.
```

## Creating Your Own

Use `cronjob` tool with:
- `schedule`: cron expression
- `skills`: skills to load
- `prompt`: what to do each tick

## Troubleshooting

- **Job didn't run**: Check `hermes cron list` to confirm it was created
- **Wrong timezone**: Cron uses system timezone. Check with `timedatectl`
- **Too many notifications**: Increase the interval or disable with `cronjob action=pause`
