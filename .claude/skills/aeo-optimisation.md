---
name: aeo-optimisation
description: AI Engine Optimisation — entity clarity, agent-ready content, llms.txt, AI crawler rules
---

# AEO Optimisation Procedure

## Purpose

Step-by-step procedure for optimising a website's visibility in AI-generated answers (Google AI Overviews, ChatGPT, Perplexity, Claude) and making content agent-ready for AI-driven search. Covers entity optimisation, content formatting, llms.txt implementation, and AI crawler configuration.

## Prerequisites

- Target domain URL
- Target queries where AI Overviews or AI citations are desired
- Existing structured data inventory
- Brand entity information (name, type, social profiles, identifiers)
- Current robots.txt content
- Content inventory with topic coverage

## Procedure

### Step 1: AI Overview Presence Audit

**Actions:**
- Search 20-30 target keywords and document AI Overview presence:
  - Does an AI Overview appear for this query?
  - Is our site cited in the AI Overview?
  - Which competitors are cited?
  - What content format does the AI Overview use? (paragraph, list, table)
  - What sources does the AI Overview draw from?
- Categorise queries:
  - **Cited**: We appear in AI Overview — protect and strengthen
  - **Competitor cited**: Others appear, we don't — opportunity to displace
  - **No AI Overview**: Not currently triggered — may change, monitor
- Note: AI Overview presence is volatile — repeat this audit monthly

**Output:** AI Overview presence matrix with citation analysis

### Step 2: Entity Clarity Assessment

**Actions:**
- Assess primary brand entity clarity:
  - Is the brand name unambiguous? (or does it share a name with other entities?)
  - Does a Google Knowledge Panel exist?
  - Is structured data (Organisation/Person/LocalBusiness) implemented?
  - Are sameAs links connecting official profiles? (LinkedIn, Twitter/X, Wikipedia, Wikidata, Crunchbase)
  - Is NAP (Name, Address, Phone) consistent across all citations?
- Check entity signals:
  - Schema.org @id for entity disambiguation
  - Consistent entity description across about page, schema, and social profiles
  - Author entities for content (Person schema with sameAs)
- Assess Knowledge Graph presence:
  - Search `[brand name]` — does a Knowledge Panel appear?
  - If not, check if entity is in Wikidata
  - Evaluate whether a Wikipedia article is warranted and achievable

**Output:** Entity clarity scorecard with gaps and recommendations

### Step 3: Content Formatting for AI Extraction

**Actions:**
- Audit content for AI-readability:
  - **Direct answers**: Does content provide clear, concise answers to questions?
  - **Structured data**: Are facts presented in structured formats (tables, lists)?
  - **Source citations**: Does content cite authoritative sources for factual claims?
  - **Definitions**: Are key terms defined clearly?
  - **Summary positions**: Does each page have a clear summary paragraph near the top?
- Optimise content patterns for AI:
  - Lead with the answer, then expand with detail
  - Use "What is [X]?" followed by a clear 1-2 sentence definition
  - Present data in tables rather than prose where appropriate
  - Use numbered lists for processes and steps
  - Include factual claims with inline citations
  - Structure FAQ sections with clear question-answer pairs
- Assess content credibility signals:
  - Author bylines with credentials
  - Publication and last-updated dates
  - Editorial process transparency
  - Source references and bibliography

**Output:** Content AI-readiness assessment per page with improvement recommendations

### Step 4: llms.txt Implementation

**Actions:**
- Create `/llms.txt` file at domain root:
  ```
  # [Company Name]

  > [One-line description of the company/site]

  ## About
  [2-3 sentence description of what the site offers]

  ## Key Pages
  - [Page Title](https://example.com/page): [Brief description]
  - [Page Title](https://example.com/page): [Brief description]

  ## Documentation
  - [Doc Title](https://example.com/docs/page): [Brief description]

  ## Contact
  - Email: [email]
  - Website: [URL]
  ```
- Optionally create `/llms-full.txt` with more comprehensive content
- Review what content llms.txt exposes — ensure it's appropriate
- Link to llms.txt from robots.txt or sitemap documentation
- Verify the file is accessible (returns 200, correct content-type)

**Output:** llms.txt file content, implementation instructions

### Step 5: AI Crawler Configuration

**Actions:**
- Audit current robots.txt for AI crawler rules
- Decide access policy for each AI crawler:

| Crawler | User-Agent | Decision Factors |
|---------|-----------|-----------------|
| GPTBot (OpenAI) | GPTBot | Content used to train models vs visibility in ChatGPT |
| ClaudeBot (Anthropic) | ClaudeBot | Similar to GPTBot — training vs AI search |
| Google-Extended | Google-Extended | Controls use in Gemini/Bard, separate from Search |
| PerplexityBot | PerplexityBot | Controls citation in Perplexity AI answers |
| Applebot-Extended | Applebot-Extended | Apple Intelligence features |

- Recommended approach for most sites:
  - Allow AI crawlers (blocking reduces AI visibility)
  - Use llms.txt to guide AI understanding
  - Monitor and adjust based on business impact
- If blocking is desired, add specific rules:
  ```
  User-agent: GPTBot
  Disallow: /private/
  Allow: /
  ```

**Output:** AI crawler policy document, robots.txt updates if needed

### Step 6: Structured Data for AI Enhancement

**Actions:**
- Extend structured data beyond traditional SEO needs:
  - Add sameAs links to all official entity profiles
  - Implement comprehensive Organisation schema with full contact and identity info
  - Add Author schema to all content with author credentials
  - Implement FAQ schema on pages with question-answer content
  - Add HowTo schema to procedural content
  - Ensure Product schema includes all available properties
- Focus on entity connections:
  - Link content to authors (Person entities)
  - Link authors to the organisation
  - Link the organisation to industry entities
  - Use @id consistently for entity references across pages

**Output:** Enhanced structured data implementation plan

### Step 7: Agent-Readiness Score

**Actions:**
- Score the site on 10 agent-readiness dimensions (1 point each):
  1. llms.txt present and complete
  2. Comprehensive structured data across all page types
  3. Content provides clear, direct answers to target queries
  4. Factual claims cite authoritative sources
  5. Data presented in structured formats (tables, lists)
  6. FAQ schema on relevant pages
  7. AI crawler access properly configured
  8. Entity clarity established (consistent identity, sameAs links)
  9. Author expertise signals present (bylines, credentials)
  10. Content updated regularly with accurate dates

**Output:** Agent-Readiness Score (0-10) with per-dimension breakdown

## Final Output

Compile into an AEO Assessment Report following the aeo-researcher output format. Include: AI Overview audit, entity assessment, content recommendations, llms.txt, crawler configuration, and Agent-Readiness Score.
