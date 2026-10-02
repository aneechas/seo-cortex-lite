# Request Routing Workflow

## Purpose

Decision tree for routing incoming SEO requests to the correct specialist agent. Used by seo-head and seo-project-manager to ensure every request reaches the right agent quickly.

## Routing Rules

When a request arrives, match it against these categories in order. If a request spans multiple categories, the seo-project-manager coordinates a multi-agent workflow.

### "Full audit" / "Site audit" / "SEO health check"
**Route to:** seo-analyst (orchestrator) + ALL specialist agents
**Workflow:** `full-audit.md`
**Agents involved:** dr-eggbot, on-page-analyst, keyword-researcher, backlink-researcher, aeo-researcher, market-researcher
**Coordination:** seo-project-manager tracks progress across agents

### "Technical issue" / "Site not indexing" / "CWV problem" / "Schema error"
**Route to:** dr-eggbot
**Skills:** `technical-audit`, `schema-implementation`, `core-web-vitals`
**Escalation:** If issue affects content strategy → seo-head

### "Keyword research" / "What should we target?" / "Topic clusters"
**Route to:** keyword-researcher
**Skill:** `keyword-research`
**Handoff:** Results go to seo-writer for content briefs

### "Content" / "Blog post" / "Landing page" / "Content brief"
**Route to:** seo-writer + keyword-researcher
**Workflow:** `content-production.md`
**Skill:** `content-brief`
**Handoff:** On-page-analyst reviews, dr-eggbot handles technical setup

### "Strategy" / "Roadmap" / "Priorities" / "Where should we focus?"
**Route to:** seo-head
**Skills:** `site-audit`, `keyword-research`
**Support:** seo-analyst for data, market-researcher for competitive context

### "Competitor analysis" / "Who are our competitors?" / "Market gaps"
**Route to:** market-researcher
**Skill:** `competitor-analysis`
**Handoff:** keyword-researcher for keyword gaps, backlink-researcher for link gaps

### "Links" / "Backlinks" / "Link building" / "Disavow" / "Toxic links"
**Route to:** backlink-researcher
**Skill:** `link-analysis`
**Handoff:** seo-writer for linkable content, seo-head for link strategy

### "AI Overview" / "AEO" / "GEO" / "AI visibility" / "llms.txt"
**Route to:** aeo-researcher
**Skill:** `aeo-optimisation`
**Handoff:** dr-eggbot for technical implementation, seo-writer for content

### "On-page" / "Title tags" / "Meta descriptions" / "Page optimisation"
**Route to:** on-page-analyst
**Skill:** `on-page-optimisation`
**Handoff:** seo-writer for content changes, dr-eggbot for technical fixes

### "Report" / "Performance" / "Rankings" / "Dashboard" / "Analytics"
**Route to:** seo-analyst
**Skill:** `site-audit`
**Handoff:** seo-head for strategic recommendations

### "Project plan" / "Sprint" / "Timeline" / "Task tracking"
**Route to:** seo-project-manager
**Support:** seo-head for strategic input

## Ambiguous Requests

If the request is unclear:
1. seo-head assesses the request and asks one clarifying question
2. If still unclear after clarification, route to seo-analyst for a quick assessment to determine which specialist is needed
3. Never leave a request unrouted — make a best-effort routing decision and note the uncertainty

## Multi-Agent Requests

Some requests require multiple agents working in sequence or parallel:

| Request Pattern | Primary | Support | Coordination |
|----------------|---------|---------|-------------|
| "Improve rankings for [keyword]" | keyword-researcher | on-page-analyst, seo-writer | seo-project-manager |
| "Fix technical SEO and create content" | dr-eggbot (first) | seo-writer (after) | seo-project-manager |
| "Complete rebrand SEO migration" | dr-eggbot | on-page-analyst, keyword-researcher, seo-analyst | seo-project-manager |
| "Beat competitor X" | market-researcher | keyword-researcher, backlink-researcher, seo-writer | seo-head |
| "Prepare for AI search" | aeo-researcher | dr-eggbot, seo-writer | seo-project-manager |

## Routing Principles

1. **Route fast** — don't over-analyse, get the request to a specialist quickly
2. **Route to the specialist** — don't try to do specialist work from seo-head
3. **One primary owner** — even multi-agent work has one lead agent
4. **Evidence first** — every specialist starts by gathering evidence before making changes
5. **Handoffs are explicit** — when passing work, state what was done and what's needed next
