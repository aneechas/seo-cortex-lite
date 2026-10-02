---
name: technical-audit
description: Full technical SEO audit — crawlability, indexation, schema, CWV, security
---

# Technical SEO Audit Procedure

## Purpose

Step-by-step procedure for conducting a comprehensive technical SEO audit. Covers every technical dimension that affects search engine crawling, indexing, and ranking.

## Prerequisites

- Target domain URL
- Access to robots.txt and XML sitemap
- Google Search Console access or data export (preferred)
- PageSpeed Insights API or manual checks
- Ability to view page source and rendered DOM

## Procedure

### Step 1: Robots.txt Review

**Check:**
- Fetch `[domain]/robots.txt` — confirm it exists and returns 200
- Verify no critical paths are blocked (CSS, JS, images needed for rendering)
- Check for overly broad disallow rules (e.g. `Disallow: /`)
- Confirm sitemap directive is present and URL is correct
- Review AI crawler directives (GPTBot, ClaudeBot, Google-Extended)
- Check for conflicting rules across user-agents

**Output:** List of issues with severity (critical/warning/info)

### Step 2: XML Sitemap Validation

**Check:**
- Fetch sitemap URL from robots.txt directive
- Validate XML syntax (well-formed, correct namespace)
- Check URL count vs indexed page count (significant gaps = problem)
- Verify all listed URLs return 200 status
- Check for non-canonical URLs in sitemap
- Verify lastmod dates are accurate (not all identical)
- Check sitemap size limits (50,000 URLs / 50MB per file)
- Verify sitemap index if multiple sitemaps exist

**Output:** URL count, error count, accuracy assessment

### Step 3: Crawlability Assessment

**Check:**
- Identify orphan pages (in sitemap but no internal links, or vice versa)
- Check crawl depth (pages should be within 3-4 clicks from homepage)
- Identify redirect chains (>1 hop) and loops
- Check for soft 404s (200 status but empty/error content)
- Verify internal link equity distribution
- Check for broken internal links (4xx responses)
- Assess URL parameter handling

**Output:** Crawl depth chart, orphan page list, redirect issues

### Step 4: Indexation Audit

**Check:**
- Compare indexed pages (site: search) vs submitted pages (sitemap)
- Review GSC Index Coverage report for errors and warnings
- Check for unintended noindex directives (meta robots, X-Robots-Tag)
- Audit canonical tag implementation across the site
- Identify duplicate content clusters (same content, different URLs)
- Check for index bloat (low-value pages consuming crawl budget)
- Verify pagination handling (rel=next/prev or alternative)

**Output:** Index ratio, coverage issues table, duplicate clusters

### Step 5: Structured Data Validation

**Check:**
- Inventory all pages with structured data
- Validate each schema type against schema.org specifications
- Test with Google Rich Results Test for eligible types
- Check for required vs recommended properties
- Verify data accuracy (prices, ratings, availability match visible content)
- Identify pages missing expected schema (e.g. product pages without Product schema)
- Check for nested/related schema relationships

**Output:** Schema inventory table, validation errors, missing schema list

### Step 6: Core Web Vitals Assessment

**Check:**
- **LCP (Largest Contentful Paint)**: Identify largest element, check load time
  - Target: ≤2500ms
  - Common causes: large images, slow server, render-blocking resources
- **INP (Interaction to Next Paint)**: Check interactive responsiveness
  - Target: ≤200ms
  - Common causes: long JavaScript tasks, heavy event handlers
- **CLS (Cumulative Layout Shift)**: Identify layout instability
  - Target: ≤0.1
  - Common causes: images without dimensions, dynamic content injection, web fonts
- Use both field data (CrUX) and lab data (Lighthouse) — field data takes precedence
- Check mobile and desktop separately

**Output:** CWV scorecard with pass/fail per metric, root cause per failure

### Step 7: Mobile Rendering Check

**Check:**
- Test mobile rendering using Google's Mobile-Friendly Test
- Check viewport meta tag configuration
- Verify tap targets are adequately sized (48px minimum)
- Check for horizontal scrolling issues
- Verify font sizes are readable without zoom
- Check for mobile-specific content parity (same content as desktop)
- Test interstitial/popup compliance

**Output:** Mobile usability issues list with page examples

### Step 8: Security and HTTPS Check

**Check:**
- Verify HTTPS is enforced (HTTP → HTTPS redirect)
- Check SSL certificate validity and expiry date
- Verify HSTS header is present
- Check for mixed content warnings (HTTP resources on HTTPS pages)
- Review security headers (X-Frame-Options, CSP, X-Content-Type-Options)
- Verify no sensitive data exposed in source code

**Output:** Security header checklist, mixed content issues, certificate status

### Step 9: HTTP Status and Redirect Audit

**Check:**
- Crawl all internal URLs and log status codes
- Identify and fix 4xx errors (broken links, removed pages)
- Review 3xx redirects for chains and unnecessary hops
- Check 5xx server errors for patterns
- Verify 301 vs 302 usage (permanent vs temporary)
- Check for meta refresh redirects (replace with server-side)

**Output:** Status code distribution, redirect chain list, broken link report

### Step 10: Performance and Server Configuration

**Check:**
- Check server response time (TTFB target: <600ms)
- Verify caching headers (Cache-Control, ETag, Expires)
- Check compression (Gzip/Brotli enabled)
- Review resource hints (preconnect, prefetch, preload)
- Check for render-blocking resources
- Verify CDN configuration if applicable

**Output:** Server performance summary, caching audit, compression status

## Final Output

Compile all step outputs into a Technical SEO Audit Report following the dr-eggbot output format. Score each dimension, calculate weighted health score, and prioritise issues by impact × effort.
