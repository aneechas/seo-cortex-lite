# Content Production Workflow

## Purpose

End-to-end workflow for producing SEO-optimised content, from keyword opportunity identification through publication-ready content with all technical SEO elements in place.

## Trigger

User requests content creation, a content brief, a blog post, a landing page, or identifies a content gap to fill.

## Workflow Steps

### Step 1: Opportunity Identification
**Lead:** keyword-researcher
**Skill:** `keyword-research`
**Inputs:** Topic area or content gap from audit, seed keywords
**Actions:**
- Research target keyword and related terms
- Classify search intent
- Assess keyword difficulty and search volume
- Check for existing content that could be updated instead of creating new
- Verify no cannibalisation with existing pages
- Confirm the opportunity is worth pursuing (volume × difficulty × business value)

**Output:** Keyword target package (primary keyword, secondaries, intent, difficulty, recommended content type)

**Decision point:** If existing content covers this topic, hand to on-page-analyst for optimisation instead of creating new content.

### Step 2: Content Brief Creation
**Lead:** seo-writer
**Skill:** `content-brief`
**Inputs:** Keyword target package from step 1
**Actions:**
- Analyse top 10 SERP results for target keyword
- Conduct competitor content analysis (structure, depth, angle)
- Create detailed content outline (H1, H2s, H3s with notes)
- Set word count recommendation based on SERP analysis
- Define EEAT requirements for the topic
- Plan internal linking (from and to this content)
- Recommend schema markup type
- Draft title tag and meta description
- Suggest URL slug

**Output:** Complete content brief document

### Step 3: Content Production
**Lead:** seo-writer
**Inputs:** Content brief from step 2
**Actions:**
- Write content following the brief specifications
- Ensure natural keyword inclusion (primary in H1, intro, and throughout; secondaries in H2s and body)
- Implement heading hierarchy as specified
- Include EEAT signals (author expertise, source citations, experience evidence)
- Format for readability (short paragraphs, lists, tables where appropriate)
- Write for AI-readability (clear answers, structured data, source attribution)
- Add internal links as planned in the brief
- Prepare image recommendations (subject, alt text, placement)

**Output:** Draft content with SEO elements integrated

### Step 4: On-Page SEO Review
**Lead:** on-page-analyst
**Skill:** `on-page-optimisation`
**Inputs:** Draft content, target keywords, content brief
**Actions:**
- Verify title tag optimisation (length, keyword, compelling)
- Check meta description (length, keyword, CTA)
- Validate heading hierarchy (logical, keyword-inclusive, descriptive)
- Review keyword placement (natural, not stuffed)
- Check internal links (relevant, descriptive anchors, correct targets)
- Verify image alt text (descriptive, keyword-relevant where natural)
- Assess content structure (scannable, intent-matched)
- Check URL slug (short, keyword-inclusive)

**Output:** On-page review with specific corrections if needed

### Step 5: Technical Preparation
**Lead:** dr-eggbot
**Skill:** `schema-implementation`
**Inputs:** Final content, page type, schema recommendation from brief
**Actions:**
- Implement appropriate JSON-LD structured data
- Validate schema with Rich Results Test
- Verify page will be crawlable (not blocked by robots.txt)
- Ensure page is included in XML sitemap
- Check canonical tag is set correctly
- Verify page loads within CWV thresholds
- Confirm mobile rendering is correct

**Output:** Technical readiness checklist (pass/fail per item)

### Step 6: Final Review and Approval
**Lead:** seo-head
**Inputs:** Final content, on-page review, technical checklist
**Actions:**
- Verify content aligns with overall SEO strategy
- Check for consistency with brand voice and positioning
- Confirm all on-page issues are resolved
- Confirm all technical requirements are met
- Approve for publication

**Output:** Publication approval or revision requests

### Step 7: Post-Publication
**Lead:** seo-analyst
**Timeline:** 2-4 weeks after publication
**Actions:**
- Verify page is indexed (check GSC)
- Monitor initial ranking positions for target keywords
- Track impressions and clicks in GSC
- Note any technical issues (crawl errors, schema errors)
- Schedule performance review at 30, 60, and 90 days

**Output:** Post-publication monitoring report

## Quality Gate

Before publication approval:
- Content matches search intent verified by SERP analysis
- All on-page elements optimised (title, meta, headings, links, images)
- Schema implemented and validated
- Page is crawlable, indexable, and mobile-friendly
- No cannibalisation with existing content
- EEAT signals appropriate for the topic
