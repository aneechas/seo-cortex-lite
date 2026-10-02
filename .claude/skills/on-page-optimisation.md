---
name: on-page-optimisation
description: On-page SEO checklist — title tags, headings, linking, images, schema, URLs
---

# On-Page Optimisation Procedure

## Purpose

Comprehensive on-page SEO checklist for analysing and optimising individual pages. Covers every on-page element that influences search engine rankings and click-through rates.

## Prerequisites

- Target page URL
- Target keyword(s) and search intent for the page
- Current search performance data (GSC: impressions, clicks, position)
- Page HTML source and rendered DOM
- Internal link graph data (pages linking to/from target)

## Procedure

### Step 1: Title Tag Optimisation

**Check:**
- Title tag exists and is unique across the site
- Length: 50-60 characters (check pixel width — aim for <580px)
- Primary keyword is present (front-loaded when natural)
- Compelling and click-worthy (not just keyword + brand)
- Brand name included (typically at end, separated by | or —)
- No keyword stuffing (maximum 2 distinct keywords)
- Accurately represents page content

**Common fixes:**
- Too long → trim to essential message, move brand to end
- Missing keyword → rewrite with keyword naturally integrated
- Duplicate → create unique, page-specific titles
- Bland → add power words, numbers, or specificity

**Output:** Current title, issues, recommended title

### Step 2: Meta Description Evaluation

**Check:**
- Meta description exists and is unique
- Length: 120-155 characters (check for truncation in SERPs)
- Primary keyword included naturally
- Contains a call to action or value proposition
- Accurately summarises page content
- Compelling enough to earn clicks (this is organic ad copy)
- Not duplicated from other pages

**Output:** Current description, issues, recommended description

### Step 3: Heading Hierarchy Audit

**Check:**
- Exactly one H1 per page
- H1 includes primary keyword (naturally)
- H1 differs from the title tag (related but not identical)
- Heading hierarchy is logical (H1 → H2 → H3, no skipped levels)
- H2s cover main subtopics (secondary keywords where natural)
- Headings are descriptive, not generic ("Our Services" → "Web Development Services in London")
- No headings used purely for styling (use CSS instead)
- Heading count is proportional to content length

**Output:** Heading hierarchy tree with assessment per heading

### Step 4: Content Structure and Quality

**Check:**
- Content matches search intent (informational content for informational queries, etc.)
- Content depth is competitive (compare word count and topic coverage to top-ranking pages)
- Opening paragraph directly addresses the search query
- Content is scannable (short paragraphs, subheadings, lists, tables where appropriate)
- No thin content (under 300 words for main content pages)
- No duplicate or near-duplicate content (check against other site pages)
- Content is current (check for outdated statistics, dates, recommendations)
- Above-the-fold content is valuable (not just ads or navigation)
- EEAT signals present (author info, sources, expertise indicators)

**Output:** Content quality assessment with specific improvement notes

### Step 5: Internal Linking Analysis

**Check:**
- Page has contextual internal links (not just navigation)
- Anchor text is descriptive and keyword-relevant (not "click here")
- Links point to relevant, related pages
- No broken internal links on the page
- Page receives internal links from other relevant pages
- Homepage and key landing pages are well-linked
- No excessive internal links (aim for quality over quantity)
- Link placement is natural (within content, not forced blocks)
- Check for orphan status (does the page have enough inbound internal links?)

**Recommendations:**
- Add internal links from high-authority pages to this page
- Add contextual links from this page to related content
- Improve anchor text specificity

**Output:** Internal link inventory (inbound/outbound), recommendations

### Step 6: Image Optimisation

**Check:**
- All images have descriptive alt text (not empty, not "image1.jpg")
- Alt text includes keywords where genuinely relevant (not forced)
- Images are appropriately sized (not serving 2000px images in 400px containers)
- Modern image formats used (WebP, AVIF where supported)
- Lazy loading implemented for below-the-fold images
- Image file names are descriptive (use hyphens, not underscores)
- Decorative images have empty alt="" (not missing alt entirely)
- Images contribute to content value (not purely decorative stock photos)

**Output:** Image audit table (src, alt text, size, format, issues)

### Step 7: URL Structure Evaluation

**Check:**
- URL is clean and readable (no excessive parameters or IDs)
- URL includes primary keyword (hyphens between words)
- URL is reasonably short (aim for <75 characters path)
- URL uses lowercase only
- No stop words unless they aid readability
- URL matches content hierarchy (folder structure reflects site architecture)
- No URL parameters that create duplicate content
- Trailing slash consistency (pick one pattern and enforce)

**Output:** URL assessment with recommendation if change needed

### Step 8: Schema Markup Review

**Check:**
- Appropriate schema type implemented for the page type:
  - Article/BlogPosting for blog content
  - Product for product pages
  - LocalBusiness for location pages
  - FAQPage for FAQ content
  - HowTo for tutorial/guide content
  - BreadcrumbList for navigation context
  - Organisation for about pages
- Schema is valid (test with Rich Results Test)
- Required properties are present
- Data in schema matches visible content
- No misleading or inaccurate schema data

**Output:** Schema status, validation results, recommendations

### Step 9: Mobile and Accessibility Check

**Check:**
- Page renders correctly on mobile devices
- Tap targets are adequately sized (48px minimum)
- No horizontal scrolling
- Text is readable without zooming
- No intrusive interstitials blocking content
- Core content is visible without interaction (no hidden tabs for critical content)
- Images have appropriate alt text (accessibility)
- Link text is descriptive (accessibility)
- Colour contrast meets WCAG standards

**Output:** Mobile usability issues, accessibility concerns

## Final Output

Compile into an On-Page Analysis Report following the on-page-analyst output format. Include: current state assessment, all check results, and prioritised action items with expected impact.
