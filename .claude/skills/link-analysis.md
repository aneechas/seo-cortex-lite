---
name: link-analysis
description: Backlink profile analysis — quality, toxicity, gaps, anchor distribution, prospecting
---

# Link Analysis Procedure

## Purpose

Step-by-step procedure for analysing a site's backlink profile, assessing link quality, detecting toxic links, identifying link gaps against competitors, and prioritising outreach opportunities.

## Prerequisites

- Target domain backlink data (GSC links report, or Ahrefs/Moz/Majestic export)
- Competitor backlink data for gap analysis
- Brand name variations for unlinked mention search
- Current disavow file (if one exists)
- Site content inventory (for linkable asset assessment)

## Procedure

### Step 1: Profile Overview

**Actions:**
- Gather key metrics:
  - Total referring domains (unique domains linking to us)
  - Total backlinks (individual link count)
  - Domain authority/rating score
  - Link velocity (new referring domains per month, last 12 months)
  - Trend: growing, stable, or declining
- Compare against industry benchmarks
- Note any sudden spikes or drops (investigate cause)

**Output:** Profile summary with trend assessment

### Step 2: Link Quality Classification

**Actions:**
- Categorise each referring domain into quality tiers:
  - **High quality (Tier 1)**: DR/DA 50+, topically relevant, editorial link, real traffic
  - **Medium quality (Tier 2)**: DR/DA 20-49, somewhat relevant, legitimate site
  - **Low quality (Tier 3)**: DR/DA <20, minimal relevance, low traffic
  - **Toxic/Spam**: Obvious link farms, PBNs, irrelevant foreign-language spam, malware sites
- For each tier, calculate:
  - Count and percentage of total
  - Trend over time (growing or declining)
  - Top examples

**Assessment criteria beyond DR/DA:**
- Topical relevance to our site
- Real organic traffic (not just high DR)
- Editorial vs automated placement
- Link placement (in-content vs footer/sidebar/sitewide)
- Followed vs nofollow

**Output:** Quality distribution table with examples per tier

### Step 3: Anchor Text Distribution Analysis

**Actions:**
- Categorise all anchor text into types:
  - **Branded**: Company name, domain, variations
  - **Exact match**: Target keyword exactly
  - **Partial match**: Contains target keyword with other words
  - **Generic**: "click here", "read more", "this website"
  - **URL**: Naked URL as anchor
  - **Other**: Miscellaneous, image alt text
- Calculate percentage for each type
- Assess health:
  - Healthy: Branded dominant (40-60%), exact match low (<5-10%)
  - Warning: Exact match 10-20% (may appear manipulative)
  - Danger: Exact match >20% (likely to trigger algorithmic penalty)
- Compare against competitor anchor distributions

**Output:** Anchor text distribution chart with health assessment

### Step 4: Toxic Link Detection

**Actions:**
- Flag links matching toxic patterns:
  - Obvious link farms or PBN networks
  - Sites with no real content or traffic
  - Foreign-language sites with no relevance
  - Sites with malware or spam warnings
  - Excessive reciprocal link patterns
  - Paid link networks
  - Comment spam or forum spam links
  - Sites penalised by Google (if determinable)
- For each toxic link, assess:
  - Confidence level (definitely toxic / possibly toxic / investigate)
  - Risk level (how much damage it could cause)
  - Action needed (disavow / contact for removal / monitor)
- Check if any toxic links are already in existing disavow file

**Output:** Toxic link list with confidence, risk, and recommended action

### Step 5: Link Gap Analysis

**Actions:**
- Compare referring domains against top 3-5 competitors
- Identify:
  - **Shared links**: Domains linking to both us and competitors (benchmark)
  - **Competitor-only links**: Domains linking to competitors but not us (opportunity)
  - **Our unique links**: Domains linking only to us (advantage)
- For competitor-only links, prioritise by:
  - Domain quality (DR/DA)
  - Topical relevance
  - Number of competitors they link to (links to 3+ competitors = likely acquirable)
  - Link type (resource pages and directories are easier than editorial)
- Calculate the gap: competitor referring domains minus our referring domains

**Output:** Link gap table sorted by acquisition potential

### Step 6: Unlinked Mention Discovery

**Actions:**
- Search for brand name mentions without links:
  - Search: `"brand name" -site:yourdomain.com -link:yourdomain.com`
  - Search variations: common misspellings, abbreviations, product names
- For each unlinked mention, assess:
  - Page quality and relevance
  - Likelihood of adding a link if asked
  - Contact information availability
- Prioritise by domain authority and relevance

**Output:** Unlinked mention list with outreach priority

### Step 7: Outreach Prioritisation

**Actions:**
- Compile all link opportunities from steps 5 and 6
- Score each opportunity:
  - **Value**: Domain quality × relevance (1-10)
  - **Feasibility**: Likelihood of acquisition (1-10)
  - **Priority**: Value × Feasibility
- Group into outreach tiers:
  - **Tier 1**: High value, high feasibility — pursue immediately
  - **Tier 2**: High value, moderate feasibility — invest effort
  - **Tier 3**: Moderate value — batch outreach
  - **Skip**: Low value or very low feasibility
- Suggest outreach approach for each tier (personalised email, broken link, resource suggestion, guest content)

**Output:** Prioritised outreach target list with suggested approach

## Final Output

Compile into a Link Intelligence Report following the backlink-researcher output format. Include: profile summary, quality distribution, anchor analysis, toxic link list, link gap analysis, unlinked mentions, and prioritised outreach plan.
