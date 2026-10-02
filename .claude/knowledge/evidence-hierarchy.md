# Evidence Hierarchy for SEO

## Purpose

Defines what counts as evidence in SEO analysis, ranked by reliability. Higher-tier evidence overrides lower-tier evidence when they conflict. All agents must cite their evidence tier.

## The Hierarchy

### Tier 1: First-Party Data (Highest Reliability)
**Sources:** Google Search Console, Google Analytics 4, server logs, A/B test results.
**Why top tier:** Direct measurement from your own systems. GSC is Google telling you how your site performs in their search results.
**Examples:**
- GSC impressions, clicks, CTR, average position per query
- GA4 organic sessions, conversions, engagement metrics
- Server log crawl analysis (Googlebot frequency, pages crawled)
- Controlled A/B test results measuring SEO changes

**Limitations:** GSC data is sampled and delayed (2-3 days). GA4 may miss some organic traffic. Server logs require parsing infrastructure.

### Tier 2: Direct Technical Evidence
**Sources:** HTML source code, HTTP headers, rendered DOM, robots.txt, sitemaps.
**Why reliable:** Observable facts about the website's technical state — not estimates or projections.
**Examples:**
- Title tag content and length (view source)
- HTTP status codes (direct request)
- Canonical tag values (parsed from HTML)
- Structured data content (extracted from page)
- Core Web Vitals lab data (Lighthouse measurement)
- robots.txt directives (fetched directly)

**Limitations:** Lab data may differ from field data. Rendered DOM may differ from source HTML. Single-point-in-time observation.

### Tier 3: Search Evidence
**Sources:** Live SERP analysis, AI Overview inspection, SERP feature observation.
**Why useful:** Shows what Google actually returns for target queries — the ground truth of rankings.
**Examples:**
- Current ranking positions for target keywords
- SERP feature presence (featured snippets, PAA, AI Overviews)
- Competitor pages ranking for target queries
- Search intent signals from SERP composition

**Limitations:** SERPs are personalised and location-dependent. Rankings fluctuate. A single check is a snapshot, not a trend.

### Tier 4: Authority Evidence
**Sources:** Backlink data, citation analysis, brand mention monitoring.
**Why useful:** Indicates how external sites perceive and reference the domain.
**Examples:**
- Referring domain count and quality
- Anchor text distribution
- Brand mentions (linked and unlinked)
- Citation consistency (NAP data)

**Limitations:** Third-party backlink tools discover 40-70% of actual links. Domain authority/rating scores are proprietary estimates, not Google metrics.

### Tier 5: Official Standards
**Sources:** Google Search Central documentation, schema.org specifications, W3C standards, Core Web Vitals thresholds.
**Why useful:** Authoritative guidance on how things should work.
**Examples:**
- Google's documented ranking factors and spam policies
- Schema.org required and recommended properties
- WCAG accessibility guidelines
- Core Web Vitals threshold definitions

**Limitations:** Google's documentation describes intent, not always exact implementation. Guidance can be deliberately vague.

### Tier 6: Industry Research (Lowest Reliability)
**Sources:** SEO industry studies, correlation research, expert opinions, conference presentations.
**Why included:** Can provide useful hypotheses and context, but should never be treated as fact.
**Examples:**
- Correlation studies between ranking factors and positions
- Industry surveys on SEO practices
- Expert blog posts and analysis
- Conference talks and case studies

**Limitations:** Correlation ≠ causation. Studies may have methodological flaws. Expert opinions can be biased. Industry research often contradicts itself.

## Usage Rules

1. Always cite the evidence tier when presenting findings
2. When evidence from different tiers conflicts, defer to the higher tier
3. Never present Tier 6 evidence as Tier 1 certainty
4. Multiple sources at the same tier increase confidence
5. Absence of evidence is not evidence of absence
6. Third-party tool estimates (keyword volume, DA/DR, traffic estimates) are Tier 4-6, not Tier 1
