---
name: content-writer
description: Automated content creation — research, draft, polish, and publish to X/Twitter or blog
category: creative
---

# Content Writer

Full content pipeline: topic research → SEO outline → draft → polish → publish.

## Usage

```
/load content-writer
```

Then:
> "Write a Twitter thread about Solana's latest upgrade"
> "Draft a blog post: How I built an autonomous AI agent"
> "Create a weekly newsletter from my research folder"

## Pipeline

```
Topic / Keyword
    │
    ▼
1. RESEARCH — Search for latest info on the topic
    │  Gathers facts, stats, opposing views
    ▼
2. OUTLINE — Structure the piece
    │  Headline, subheadings, key points
    ▼
3. DRAFT — Write first version
    │  Following the outline
    ▼
4. POLISH — Tighten, fact-check, SEO
    │  Optimize headlines, add CTAs
    ▼
5. PUBLISH — To X/Twitter, blog, or save to file
```

## Content Formats

### Twitter/X Thread
- Hook (1 tweet)
- 3-5 body tweets with insights
- CTA tweet (link, question, or retweet ask)
- No hashtag stuffing

### Blog Post
- SEO-optimized title (H1)
- Intro + 3-5 sections (H2)
- Conclusion + CTA
- 800-1500 words

### Newsletter
- Subject line
- 3-5 stories with 2-3 sentence summaries
- Links to full articles
- Personal note from author

## Tone Customization

Tell the agent:
> "Write this in a professional tone"
> "Make it casual and fun"
> "Technical deep-dive style"

## Publishing

- **X/Twitter**: Uses the `x_search` tool and posts via the Hermes X integration
- **Blog**: Saves markdown to `~/content/` for manual publishing
- **Newsletter**: Outputs formatted email-ready HTML
