# Full Site Audit Workflow

## Purpose

End-to-end workflow for conducting a complete SEO site audit using all specialist agents. Defines the sequence, agent assignments, inputs, outputs, and handoff points.

## Trigger

User requests a "full audit", "site audit", "SEO audit", or "comprehensive SEO review" of a domain.

## Workflow Steps

### Step 1: Intake and Scoping
**Lead:** seo-head
**Support:** seo-project-manager
**Inputs:** Domain URL, business context, goals, available data (GSC, GA4, crawl data)
**Actions:**
- Define audit scope (full site or specific sections)
- Confirm data access and sources
- Set audit timeline and expectations
- Brief specialist agents on scope

**Output:** Audit scope document, agent task assignments

### Step 2: Technical Audit
**Lead:** dr-eggbot
**Skill:** `technical-audit`
**Inputs:** Domain URL, robots.txt, sitemap, crawl data, GSC index coverage
**Actions:**
- Crawlability assessment (robots.txt, sitemap, orphan pages)
- Indexation audit (coverage ratio, canonicals, duplicates)
- Structured data validation (schema types, errors)
- Core Web Vitals measurement (LCP, INP, CLS)
- Mobile rendering check
- Security and HTTPS audit
- Redirect chain analysis
- Server performance check

**Output:** Technical SEO report with scored dimensions (out of 25)

### Step 3: On-Page Audit
**Lead:** on-page-analyst
**Skill:** `on-page-optimisation`
**Inputs:** Top 20 pages by traffic/impressions, keyword targets per page
**Actions:**
- Title tag and meta description audit across sample pages
- Heading structure analysis
- Content quality and depth assessment
- Internal linking analysis
- Image optimisation check
- URL structure evaluation

**Output:** On-page report with scored dimensions (out of 25)

### Step 4: Content and Keyword Audit
**Lead:** keyword-researcher
**Support:** seo-writer
**Skill:** `keyword-research`
**Inputs:** Seed keywords, existing URL inventory, competitor domains
**Actions:**
- Keyword coverage analysis (which target keywords have ranking URLs)
- Topic cluster completeness assessment
- Content gap identification vs competitors
- Search intent alignment check
- Content freshness audit
- EEAT signal evaluation

**Output:** Content and keyword report with scored dimensions (out of 25)

### Step 5: Authority and Link Audit
**Lead:** backlink-researcher
**Skill:** `link-analysis`
**Inputs:** Backlink data, competitor backlink data, brand name variations
**Actions:**
- Referring domain analysis (count, quality, trend)
- Anchor text distribution assessment
- Toxic link detection
- Link gap analysis vs top competitors
- Unlinked mention discovery

**Output:** Link profile report with scored dimensions (out of 25)

### Step 6: AEO Assessment (Supplementary)
**Lead:** aeo-researcher
**Skill:** `aeo-optimisation`
**Inputs:** Target queries, structured data inventory, robots.txt
**Actions:**
- AI Overview presence audit for target queries
- Entity clarity assessment
- Agent-readiness scoring
- AI crawler configuration review

**Output:** AEO assessment with Agent-Readiness Score (out of 10), reported separately from main score

### Step 7: Competitive Context
**Lead:** market-researcher
**Skill:** `competitor-analysis`
**Inputs:** Target keywords, SERP data
**Actions:**
- SERP-based competitor identification
- Content gap comparison
- Backlink gap comparison
- Technical benchmarking

**Output:** Competitive context summary for report integration

### Step 8: Synthesis and Scoring
**Lead:** seo-analyst
**Skill:** `site-audit`
**Inputs:** All reports from steps 2-7
**Actions:**
- Calculate overall health score (Technical + On-Page + Content + Authority = /100)
- Identify top 3 strengths and top 3 weaknesses
- Cross-reference findings across dimensions
- Write executive summary
- Compile prioritised recommendations

**Output:** Complete SEO Audit Report with health score, findings, and recommendations

### Step 9: Roadmap and Sign-Off
**Lead:** seo-head
**Support:** seo-project-manager
**Inputs:** Complete audit report
**Actions:**
- Review findings and recommendations
- Create 12-week implementation roadmap
- Assign owners to each recommendation
- Set KPIs and success metrics
- Schedule follow-up audit date

**Output:** SEO Roadmap with prioritised actions, owners, and timeline

## Estimated Duration

- Small site (<100 pages): 1-2 sessions
- Medium site (100-1000 pages): 2-4 sessions
- Large site (1000+ pages): 4-8 sessions, consider phased approach

## Quality Gate

Before delivery, seo-analyst verifies:
- All dimensions scored with evidence
- No findings without evidence citations
- All recommendations have impact and effort estimates
- Executive summary accurately reflects the full report
- Roadmap is actionable and realistic
