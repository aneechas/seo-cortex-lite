# SEO Anti-Patterns

## Purpose

Reference list of common SEO mistakes and harmful practices. Agents must check for these and flag any occurrences. None of these should ever be recommended.

## Content Anti-Patterns

### Keyword Stuffing
Unnaturally repeating target keywords in content, meta tags, alt text, or hidden elements. Modern algorithms detect this and it suppresses rankings rather than helping them. Content should read naturally to humans first.

### Thin Content
Pages with insufficient substance to satisfy search intent. Examples: auto-generated pages with minimal unique content, doorway pages targeting keyword variations with near-identical content, pages with only a few sentences and no real value.

### Duplicate Content
Substantial content blocks appearing on multiple URLs without proper canonicalisation. Causes: www vs non-www, HTTP vs HTTPS, URL parameters, printer-friendly versions, syndicated content without canonical attribution.

### Auto-Generated Content Without Value
Content produced at scale (by AI or templating) without editorial review, unique insight, or genuine value to readers. The issue is not the production method but the lack of value.

### Doorway Pages
Multiple pages optimised for very similar keywords that all funnel users to the same destination. Each page adds no unique value — they exist only to capture search variations.

## Technical Anti-Patterns

### Cloaking
Showing different content to search engines than to users. This includes: serving different HTML to Googlebot, using IP-based content switching, JavaScript redirects that only fire for users (not crawlers).

### Sneaky Redirects
Redirecting users to a different page than what was indexed by search engines. Legitimate redirects (site migration, URL consolidation) are fine — the intent to deceive is what makes it a violation.

### Hidden Text
Text that is invisible to users but visible to search engines. Examples: white text on white background, text behind images, CSS-hidden keyword blocks, zero-font-size text. Note: accessible hidden text for screen readers (sr-only) is legitimate and different.

### Index Bloat
Allowing search engines to index thousands of low-value pages (faceted navigation, parameter variations, tag archives, empty category pages). Wastes crawl budget and dilutes site quality signals.

## Link Anti-Patterns

### Link Schemes
Any practice designed to manipulate link-based ranking signals. Includes: buying or selling links, excessive link exchanges, large-scale article marketing with keyword-rich anchors, automated link building programmes.

### Private Blog Networks (PBNs)
Networks of sites created solely to provide links to a target site. Google actively identifies and penalises these patterns.

### Comment and Forum Spam
Mass-posting links in blog comments, forum signatures, or guestbook entries purely for SEO value. These links are typically nofollowed and the practice damages brand reputation.

### Excessive Reciprocal Linking
"Link to me and I'll link to you" at scale. Small, genuine reciprocal links between related sites are natural — systematic exchanges across unrelated sites are not.

## Strategic Anti-Patterns

### Ignoring Search Intent
Optimising for keywords without matching the content type and format that searchers expect. If the SERP shows comparison articles and you publish a product page, you will not rank regardless of optimisation.

### Neglecting Mobile
Not prioritising mobile experience despite Google's mobile-first indexing. This includes: non-responsive design, mobile-unfriendly interstitials, tiny tap targets, missing viewport meta.

### Neglecting Structured Data
Missing opportunities for rich results by not implementing appropriate schema markup. Not a penalty — but a significant competitive disadvantage.

### Chasing Vanity Metrics
Optimising for total keyword count, domain authority score, or page count rather than relevant traffic, conversions, and business outcomes.

### Reactive SEO
Only addressing SEO when traffic drops, rather than maintaining ongoing optimisation. SEO is a continuous process, not a one-time project.

## Agent Rule

If any agent detects these anti-patterns during an audit, they must:
1. Flag the issue immediately with evidence
2. Assess severity and risk of penalty
3. Recommend remediation
4. Never recommend implementing any anti-pattern as a strategy
