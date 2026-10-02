# SEO Cortex Lite

**10 Claude Code SEO agents. Drop into any project.**

SEO Cortex Lite is a complete SEO agent system for [Claude Code](https://docs.claude.com/en/docs/claude-code). It provides 10 specialist agents, 10 procedural skills, 5 knowledge files, and 3 coordinated workflows that cover the full SEO lifecycle — from strategy and technical audits to content production, link building, and AI engine optimisation.

---

## What's Included

| Category | Count | Description |
|----------|-------|-------------|
| **Agents** | 10 | Specialist SEO agents with defined roles, skills, and handoffs |
| **Skills** | 10 | Step-by-step procedures agents follow for specific tasks |
| **Knowledge** | 5 | Reference material for quality standards, EEAT, algorithms |
| **Workflows** | 3 | Multi-agent coordination for complex SEO projects |

---

## Installation

### Option 1: Install Script (Recommended)

```bash
git clone https://github.com/aneechas/seo-cortex-lite.git
cd seo-cortex-lite
./install.sh /path/to/your/project
```

### Option 2: Manual Copy

```bash
cp -r .claude/agents/ /path/to/your/project/.claude/agents/
cp -r .claude/skills/ /path/to/your/project/.claude/skills/
cp -r .claude/knowledge/ /path/to/your/project/.claude/knowledge/
cp -r .claude/workflows/ /path/to/your/project/.claude/workflows/
```

### Option 3: Use Directly

```bash
cd seo-cortex-lite
claude
# Then use /seo-head to start
```

---

## Agents

| Agent | Role | Start Here When... |
|-------|------|-------------------|
| **seo-head** | Senior strategist and request router | Any SEO request — this is the front door |
| **market-researcher** | Competitive intelligence | You need competitor analysis or market gaps |
| **seo-project-manager** | Sprint planning and coordination | Managing a multi-step SEO project |
| **keyword-researcher** | Keywords, topics, and intent | You need keyword research or topic clusters |
| **seo-writer** | SEO copywriting and content briefs | You need content created or optimised |
| **dr-eggbot** | Technical SEO engineer | Crawl issues, indexation, schema, Core Web Vitals |
| **on-page-analyst** | Page-level optimisation | Title tags, headings, internal links, on-page SEO |
| **seo-analyst** | Audits and reporting | Full site audits, performance dashboards |
| **backlink-researcher** | Link intelligence | Backlink analysis, link building strategy |
| **aeo-researcher** | AI engine optimisation | AI Overview visibility, llms.txt, entity clarity |

---

## Quick Start

### Run a Full Site Audit

```
/seo-head Run a full SEO audit of https://example.com
```

The seo-head agent will coordinate all 10 agents through the full audit workflow, producing a scored report with prioritised recommendations.

### Get a Technical SEO Check

```
/dr-eggbot Check the technical SEO of https://example.com
```

### Create a Content Brief

```
/seo-writer Create a content brief targeting "best project management tools 2026"
```

### Analyse Competitors

```
/market-researcher Who are the SERP competitors for https://example.com in the "web development" space?
```

### Check AI Readiness

```
/aeo-researcher Assess the AI engine optimisation readiness of https://example.com
```

---

## How It Works

```
User Request
    ↓
seo-head (routes request)
    ↓
Specialist Agent (executes with skills)
    ↓
Handoff (if work crosses domains)
    ↓
Report (evidence-cited findings + recommendations)
```

1. **Every request starts with `seo-head`** (or goes directly to a specialist if you know which one)
2. **Agents use skills** — step-by-step procedures in `.claude/skills/`
3. **Agents reference knowledge** — quality standards and frameworks in `.claude/knowledge/`
4. **Agents hand off** to each other when work crosses domain boundaries
5. **Every finding cites evidence** — no fabricated data, no unsupported claims

---

## Evidence Hierarchy

All agents follow a strict evidence hierarchy:

1. **First-party data** — GSC, GA4, server logs (highest reliability)
2. **Direct technical evidence** — HTML source, HTTP headers, rendered DOM
3. **Search evidence** — Live SERPs, AI Overviews
4. **Authority evidence** — Backlinks, citations, brand mentions
5. **Official standards** — Google documentation, schema.org, W3C
6. **Industry research** — Studies, expert opinions (lowest reliability)

---

## Quality Standards

- Every finding must cite evidence with its tier
- Every recommendation must include impact, effort, and risk assessment
- Never fabricate analytics, crawl, or search data
- Never mass-change indexation without explicit approval
- Use UK English throughout

---

## Project Structure

```
seo-cortex-lite/
├── CLAUDE.md                          # Agent system configuration
├── README.md                          # This file
├── LICENSE                            # MIT licence
├── THIRD_PARTY_NOTICES.md             # Attribution for source projects
├── install.sh                         # One-command installer
└── .claude/
    ├── agents/                        # 10 specialist agents
    │   ├── seo-head.md
    │   ├── market-researcher.md
    │   ├── seo-project-manager.md
    │   ├── keyword-researcher.md
    │   ├── seo-writer.md
    │   ├── dr-eggbot.md
    │   ├── on-page-analyst.md
    │   ├── seo-analyst.md
    │   ├── backlink-researcher.md
    │   └── aeo-researcher.md
    ├── skills/                        # 10 procedural skills
    │   ├── technical-audit.md
    │   ├── content-brief.md
    │   ├── keyword-research.md
    │   ├── site-audit.md
    │   ├── competitor-analysis.md
    │   ├── on-page-optimisation.md
    │   ├── link-analysis.md
    │   ├── schema-implementation.md
    │   ├── core-web-vitals.md
    │   └── aeo-optimisation.md
    ├── knowledge/                     # 5 reference files
    │   ├── seo-quality-gates.md
    │   ├── eeat-rubric.md
    │   ├── anti-patterns.md
    │   ├── google-algorithm-guide.md
    │   └── evidence-hierarchy.md
    └── workflows/                     # 3 coordination workflows
        ├── full-audit.md
        ├── content-production.md
        └── request-routing.md
```

---

## Attribution

This project builds on research and patterns from:

- **[World-Class-SEO-Agent-System](https://github.com/naijarace/World-Class-SEO-Agent-System)** (MIT) — Agent architecture patterns and skill structures
- **[agent-ready-geo](https://github.com/ilang-ai/agent-ready-geo)** (MIT) by ilang-ai — AEO/GEO optimisation methodology

All content is originally written — inspired by these projects but not copied.

---

## Licence

MIT — see [LICENSE](LICENSE).

---

## Made By

**AnishLabs** — [AI Refinery](https://anishbuilds.netlify.app/refinery)
