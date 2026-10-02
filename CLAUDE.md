## Identity
- **Instance Name**: SEO Cortex Lite
- **Project**: Claude Code SEO Agent System
- **Boundary**: This repository
- **Purpose**: 10 specialist SEO agents for any project

## Overview

SEO Cortex Lite provides 10 Claude Code agents that cover the full SEO workflow — from strategy to technical audits to content to links to AI optimisation.

Drop the `.claude/` folder into any project and start using SEO agents immediately.

## Quick Start

1. Clone this repo or run `./install.sh /path/to/your/project`
2. Open your project in Claude Code
3. Use `/seo-head` to route any SEO request
4. Or call agents directly: `/dr-eggbot`, `/seo-writer`, etc.

## Agent Index

| Agent | Role | When to Use |
|-------|------|-------------|
| `seo-head` | Strategy and routing | Any SEO request — start here |
| `market-researcher` | Competitive intelligence | Competitor analysis, market gaps |
| `seo-project-manager` | Coordination | Multi-step SEO projects |
| `keyword-researcher` | Keywords and topics | Keyword research, topic clusters |
| `seo-writer` | Content and copy | Content briefs, SEO writing |
| `dr-eggbot` | Technical SEO | Crawlability, indexation, schema, CWV |
| `on-page-analyst` | Page optimisation | Title tags, headings, on-page SEO |
| `seo-analyst` | Audits and reporting | Site audits, performance analysis |
| `backlink-researcher` | Link intelligence | Backlink analysis, link building |
| `aeo-researcher` | AI optimisation | AEO/GEO, AI Overview visibility |

## Skills Reference

| Skill | Used By | Purpose |
|-------|---------|---------|
| `technical-audit` | dr-eggbot | Full technical SEO audit |
| `content-brief` | seo-writer | SEO content brief creation |
| `keyword-research` | keyword-researcher | Keyword research methodology |
| `site-audit` | seo-analyst | Full site audit orchestration |
| `competitor-analysis` | market-researcher | Competitive intelligence |
| `on-page-optimisation` | on-page-analyst | On-page SEO checklist |
| `link-analysis` | backlink-researcher | Backlink profile analysis |
| `schema-implementation` | dr-eggbot | Structured data guide |
| `core-web-vitals` | dr-eggbot | CWV diagnosis and fixes |
| `aeo-optimisation` | aeo-researcher | AI engine optimisation |

## Workflows

| Workflow | Trigger | Description |
|----------|---------|-------------|
| `full-audit` | "Run a full SEO audit" | All agents, all dimensions, scored report |
| `content-production` | "Create content for [topic]" | Keyword → brief → write → review → publish |
| `request-routing` | Any SEO request | Decision tree routing to correct agent |

## How It Works

Each agent is a specialist with defined skills, evidence requirements, and handoff rules. The `seo-head` agent routes requests. Agents hand off to each other when work crosses domain boundaries.

Agents reference shared skills (`.claude/skills/`) for step-by-step procedures and shared knowledge (`.claude/knowledge/`) for quality standards and reference material.

## Evidence Hierarchy

Agents prioritise evidence in this order:
1. First-party data (GSC, GA4, server logs)
2. Direct technical evidence (HTML, headers, rendered DOM)
3. Search evidence (live SERPs, AI Overviews)
4. Authority evidence (backlinks, citations)
5. Official standards and documentation
6. Industry research

## Quality Standards

- Every finding must cite evidence
- Every recommendation must include impact, effort, and risk
- Never fabricate analytics, crawl, or search data
- Never mass-change indexation without explicit approval
- Use UK English throughout

## Knowledge Base

| File | Purpose |
|------|---------|
| `seo-quality-gates` | Scoring thresholds, evidence requirements, escalation triggers |
| `eeat-rubric` | Experience, Expertise, Authoritativeness, Trustworthiness assessment |
| `anti-patterns` | Common SEO mistakes agents must flag and never recommend |
| `google-algorithm-guide` | Key algorithm systems and alignment strategies |
| `evidence-hierarchy` | What counts as evidence and reliability rankings |

## Attribution

Built on research from:
- [World-Class-SEO-Agent-System](https://github.com/naijarace/World-Class-SEO-Agent-System) (MIT) — Agent architecture patterns
- [agent-ready-geo](https://github.com/ilang-ai/agent-ready-geo) (MIT) by ilang-ai — AEO/GEO optimisation

Made by AnishLabs — [AI Refinery](https://anishbuilds.netlify.app/refinery)
