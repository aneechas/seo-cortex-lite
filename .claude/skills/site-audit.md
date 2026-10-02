---
name: site-audit
description: Full site audit orchestration — agent coordination, scoring, report assembly
---

# Full Site Audit Orchestration Procedure

## Purpose

Meta-skill that orchestrates a complete SEO site audit across all specialist agents. Defines the sequence, coordination, evidence collection, scoring methodology, and final report assembly.

## Prerequisites

- Target domain URL
- Google Search Console data (preferred) or ability to check manually
- Crawl data or ability to crawl the site
- Business context (industry, goals, target audience)
- Competitor domains (known or to be discovered)

## Procedure

### Step 1: Audit Scope and Kickoff

**Actions:**
- Define audit scope: full site or specific section
- Identify available data sources (GSC, GA4, crawl tools, backlink data)
- Set audit date for consistent reporting
- Brief all specialist agents on scope and priority
- Create audit tracking document

**Output:** Audit scope document, agent assignments

### Step 2: Technical Audit (Lead: dr-eggbot)

**Invoke:** `technical-audit` skill

**Dimensions to score:**
- Crawlability (robots.txt, sitemap, crawl depth, orphan pages)
- Indexation (coverage ratio, canonical health, duplicate content)
- Structured data (coverage, validity, completeness)
- Core Web Vitals (LCP, INP, CLS — field and lab data)
- Mobile rendering (usability, viewport, tap targets)
- Security (HTTPS, headers, certificate)
- Server performance (TTFB, caching, compression)
- Redirects (chains, loops, status codes)

**Scoring:** Each sub-dimension scored 0-5. Technical score = average × 5 (out of 25).

### Step 3: On-Page Audit (Lead: on-page-analyst)

**Invoke:** `on-page-optimisation` skill on a representative sample

**Sample selection:**
- Homepage
- Top 10 pages by organic traffic
- Top 10 pages by impressions (if different)
- Key landing pages (services, products, categories)
- Recently published content

**Dimensions to score:**
- Title tag optimisation (keyword presence, length, uniqueness)
- Meta description quality (compelling, correct length, keyword present)
- Heading structure (H1 presence, hierarchy, keyword inclusion)
- Content quality (depth, readability, freshness, intent match)
- Internal linking (link equity distribution, orphan pages)
- Image optimisation (alt text, file size, modern formats)
- URL structure (clean, descriptive, keyword-inclusive)

**Scoring:** Each sub-dimension scored 0-5. On-page score = average × 5 (out of 25).

### Step 4: Content and Keyword Audit (Lead: keyword-researcher)

**Invoke:** `keyword-research` skill for gap analysis

**Dimensions to score:**
- Keyword coverage (target keywords with ranking URLs)
- Topic cluster completeness (pillar + supporting content)
- Content freshness (last updated dates, outdated information)
- Search intent alignment (content format matches intent)
- Content cannibalisation (multiple pages competing)
- EEAT signals (author expertise, citations, experience)
- Content depth vs competitors (comprehensive coverage)

**Scoring:** Each sub-dimension scored 0-5. Content score = average × 5 (out of 25).

### Step 5: Authority and Link Audit (Lead: backlink-researcher)

**Invoke:** `link-analysis` skill

**Dimensions to score:**
- Referring domain count and growth trend
- Link quality distribution (high/medium/low/toxic ratio)
- Anchor text distribution (natural vs over-optimised)
- Link gap vs competitors (domains linking to them but not us)
- Toxic link exposure (spam, PBN, irrelevant links)
- Brand mention presence (linked vs unlinked)
- Link velocity (growth rate — healthy, stagnant, or declining)

**Scoring:** Each sub-dimension scored 0-5. Authority score = average × 5 (out of 25).

### Step 6: AEO Assessment (Lead: aeo-researcher)

**Invoke:** `aeo-optimisation` skill

**Note:** AEO is reported as a supplementary assessment, not part of the core 100-point score. It represents future-readiness.

**Dimensions assessed:**
- AI Overview presence for target queries
- Entity clarity and structured data for AI
- Agent-readiness of content architecture
- AI crawler access configuration

**Scoring:** Reported as Agent-Readiness Score (0-10), separate from main health score.

### Step 7: Score Calculation and Synthesis

**Actions:**
- Calculate overall health score:
  ```
  Health Score = Technical (25) + On-Page (25) + Content (25) + Authority (25) = /100
  ```
- Rate each dimension:
  - 20-25: Excellent — maintain and optimise
  - 15-19: Good — targeted improvements needed
  - 10-14: Needs Work — significant issues to address
  - 0-9: Critical — fundamental problems requiring immediate attention
- Identify top 3 strengths and top 3 weaknesses
- Cross-reference findings across dimensions (e.g. technical issues causing content problems)
- Synthesise into executive summary (3-5 sentences)

### Step 8: Recommendations and Roadmap

**Actions:**
- Compile all findings into prioritised recommendations
- Score each recommendation: Impact (H/M/L) × Effort (H/M/L)
- Assign owner agent for each recommendation
- Create 12-week implementation roadmap:
  - Weeks 1-2: Critical fixes (high impact, low effort)
  - Weeks 3-6: Strategic improvements (high impact, medium effort)
  - Weeks 7-10: Growth initiatives (medium impact, variable effort)
  - Weeks 11-12: Measurement, iteration, and next audit planning
- Set next audit date (typically 90 days)

## Final Output

Compile into a Full SEO Audit Report following the seo-analyst output format. Include: executive summary, health score breakdown, all dimension reports, prioritised recommendations, and implementation roadmap.
