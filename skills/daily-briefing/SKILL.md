---
name: daily-briefing
description: Morning briefing with weather, news, calendar, and AI tip of the day — delivered on cron
category: productivity
---

# Daily Briefing

Your personal morning newspaper, delivered automatically every day.

## Installation

```
/load daily-briefing
```

Set up the cron:
> "Set up a daily briefing at 8 AM"

Or manually:
```bash
hermes cron create \
  --schedule "0 8 * * *" \
  --skills "daily-briefing" \
  --prompt "Generate today's briefing for Henri"
```

## What's Included

### Weather
- Uses **Open-Meteo API** (free, no key needed)
- Temperature, conditions, wind
- Location auto-detected from your system

### News
- Top 5 tech/AI headlines
- Brief 1-sentence summary per article
- Links to full articles

### Calendar
- If configured: upcoming events
- Otherwise: day of week, date, notable holidays

### AI Tip of the Day
- Random productivity tip for working with AI agents
- Changes daily

## Output Template

```markdown
# ☀️ Good Morning, Henri! — Monday, January 1

## 🌤️ Weather
Berlin: 12°C, partly cloudy, light breeze

## 📰 Top Stories
1. [Title](link) — Brief...
2. [Title](link) — Brief...

## 📅 Today
- No events scheduled
- Notable: New Year's Day

## 💡 AI Tip
Use /load to activate skills instead of describing what you want each time.
```

## Customization

Tell the agent:
> "Add cryptocurrency prices to my briefing"
> "Include my GitHub notifications"
> "Send the briefing to my Telegram instead"
