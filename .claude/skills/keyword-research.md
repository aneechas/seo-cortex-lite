---
name: keyword-research
description: Keyword research methodology — expansion, intent mapping, clustering, prioritisation
---

# Keyword Research Procedure

## Purpose

Step-by-step methodology for conducting keyword research from seed keywords to prioritised, clustered keyword targets with intent mapping and content gap analysis.

## Prerequisites

- 5-20 seed keywords representing core business topics
- Target domain URL
- Target geography and language
- Business description and audience
- Competitor domains (known or to be discovered)
- Existing URL inventory (sitemap or crawl)

## Procedure

### Step 1: Seed Keyword Expansion

**Actions:**
- Start with provided seed keywords
- Expand using these methods:
  - **Autocomplete mining**: Search each seed and capture autocomplete suggestions
  - **People Also Ask**: Record PAA questions for each seed
  - **Related searches**: Capture "related searches" at bottom of SERPs
  - **Modifier expansion**: Add common modifiers (how, what, best, vs, near me, [year], free, for [audience])
  - **Synonym expansion**: Identify alternative terms for the same concepts
  - **Long-tail expansion**: Combine seeds with qualifying phrases
  - **Question mining**: Frame seeds as who/what/when/where/why/how questions
- Deduplicate the expanded list
- Target: 50-200 keywords per seed cluster

**Output:** Raw expanded keyword list organised by seed origin

### Step 2: Search Volume and Difficulty Assessment

**Actions:**
- Gather search volume estimates for all keywords
- Note data source and precision (tool estimates are directional, not exact)
- Assess keyword difficulty using SERP analysis:
  - What types of sites rank? (authority sites, niche sites, forums)
  - How strong are the top-ranking pages? (backlinks, content depth)
  - Are there weak results that could be displaced?
- Categorise difficulty:
  - **Low**: Forums, thin content, or few strong competitors in top 10
  - **Medium**: Mix of authority and smaller sites, quality content needed
  - **High**: Dominated by major authority sites, significant investment needed
- Flag zero-volume keywords that still have strategic value (branded terms, emerging topics)

**Output:** Keyword list with volume estimates and difficulty ratings

### Step 3: Search Intent Classification

**Actions:**
- Classify every keyword by primary intent:
  - **Informational** (I): Wants to learn → articles, guides, how-tos
  - **Navigational** (N): Wants a specific page → brand/product pages
  - **Commercial Investigation** (CI): Researching options → comparisons, reviews
  - **Transactional** (T): Wants to act → product, pricing, signup pages
- Verify intent by checking actual SERPs (don't assume from keyword alone):
  - What content types rank? (intent indicator)
  - What SERP features appear? (featured snippets = informational, shopping = transactional)
- Flag keywords with mixed intent (multiple content types in SERPs)
- Note intent shifts (some keywords change intent seasonally or contextually)

**Output:** Keyword list with intent classification and SERP evidence

### Step 4: Topic Clustering

**Actions:**
- Group keywords into topic clusters based on:
  - **Semantic similarity**: Keywords about the same core topic
  - **SERP overlap**: Keywords where the same URLs rank (same search intent)
  - **User journey alignment**: Keywords that represent stages in a decision process
- For each cluster, identify:
  - **Pillar keyword**: Highest-volume, broadest intent keyword
  - **Supporting keywords**: More specific, lower-volume variations
  - **Content type**: What format serves the cluster best
- Structure clusters as pillar-cluster model:
  - 1 pillar page (comprehensive, broad topic)
  - 5-15 cluster pages (specific subtopics, linked to pillar)
- Validate clusters by checking SERP overlap between keywords in the same cluster

**Output:** Topic cluster map with pillar and supporting keywords

### Step 5: Content Gap Identification

**Actions:**
- Map existing site URLs to keyword clusters
- Identify gaps:
  - **Missing clusters**: Topics competitors cover but we don't
  - **Thin coverage**: Clusters where we have content but it's insufficient
  - **Missing formats**: Queries expecting a format we don't provide (video, tool, calculator)
  - **Missing intent coverage**: We have informational but not transactional (or vice versa)
- For each gap, assess:
  - Search volume opportunity
  - Competitive difficulty
  - Business relevance
  - Content effort required

**Output:** Content gap matrix (keyword × URL × coverage status)

### Step 6: Keyword-to-URL Mapping

**Actions:**
- For each keyword cluster, assign a target URL:
  - **Existing page** that already ranks or could rank with optimisation
  - **New page needed** — define the content type and suggested slug
  - **Cannibalisation risk** — flag if multiple pages target the same cluster
- Check for cannibalisation:
  - Search `site:[domain] [keyword]` to see which pages Google associates
  - If multiple pages compete for the same keyword, recommend consolidation
- Document the mapping clearly: keyword → URL → status (existing/optimise/create)

**Output:** Keyword-to-URL map with cannibalisation flags

### Step 7: Prioritisation Matrix

**Actions:**
- Score each keyword/cluster on four dimensions:
  - **Search Volume**: Relative traffic potential (1-5)
  - **Difficulty**: Achievability with available resources (1-5, inverted — lower difficulty = higher score)
  - **Business Value**: Revenue/conversion relevance (1-5)
  - **Current Position**: Quick win potential if already ranking 11-30 (bonus +1)
- Calculate priority score: (Volume × 0.25) + (Ease × 0.25) + (Value × 0.35) + (Position × 0.15)
- Rank keywords by priority score
- Group into priority tiers:
  - **P1**: High volume, achievable, high business value — do first
  - **P2**: Good opportunity, moderate effort — plan for next quarter
  - **P3**: Long-term plays, high difficulty — build towards
  - **P4**: Low priority — monitor but don't invest now

**Output:** Prioritised keyword list with scores and tier assignments

## Final Output

Compile into a Keyword Research Deliverable following the keyword-researcher output format. Include: expanded keyword list, topic clusters, content gap analysis, keyword-to-URL map, and prioritisation matrix.
