---
name: core-web-vitals
description: CWV diagnosis and fix — LCP, INP, CLS with field vs lab data interpretation
---

# Core Web Vitals Procedure

## Purpose

Step-by-step procedure for diagnosing Core Web Vitals issues and implementing fixes. Covers LCP, INP, and CLS with field vs lab data interpretation and root cause analysis for each metric.

## Prerequisites

- Target URL(s) for analysis
- PageSpeed Insights access (uses both Lighthouse and CrUX data)
- Chrome DevTools access for detailed diagnosis
- Access to site source code for implementing fixes

## Thresholds

| Metric | Good | Needs Improvement | Poor |
|--------|------|-------------------|------|
| LCP (Largest Contentful Paint) | ≤2500ms | 2500-4000ms | >4000ms |
| INP (Interaction to Next Paint) | ≤200ms | 200-500ms | >500ms |
| CLS (Cumulative Layout Shift) | ≤0.1 | 0.1-0.25 | >0.25 |

## Field vs Lab Data

**Field data (CrUX)**: Real user measurements over 28 days. This is what Google uses for ranking. Always takes precedence over lab data.

**Lab data (Lighthouse)**: Simulated test in controlled conditions. Useful for diagnosis and before/after comparison, but does not reflect real user experience.

**If field and lab disagree**: Trust field data for ranking impact. Use lab data to identify and test fixes.

## Procedure

### Step 1: Gather Baseline Data

**Actions:**
- Run PageSpeed Insights for target URLs (both mobile and desktop)
- Record field data (CrUX) if available:
  - LCP value and pass rate
  - INP value and pass rate
  - CLS value and pass rate
  - Origin-level vs URL-level data
- Record lab data (Lighthouse):
  - Performance score
  - Individual metric values
  - Opportunities and diagnostics
- Note: New sites may lack field data — use lab data as proxy

**Output:** Baseline CWV scorecard (field + lab)

### Step 2: LCP Diagnosis

**LCP measures how fast the largest visible element renders.**

**Identify the LCP element:**
- In Lighthouse report, check "Largest Contentful Paint element"
- Common LCP elements: hero images, heading text, background images, video posters

**Root cause analysis (check in order):**

1. **Slow server response (TTFB >600ms)**
   - Diagnosis: Check TTFB in Lighthouse or DevTools Network tab
   - Fixes: Upgrade hosting, enable CDN, implement server caching, optimise database queries

2. **Render-blocking resources**
   - Diagnosis: Check "Eliminate render-blocking resources" in Lighthouse
   - Fixes: Defer non-critical CSS/JS, inline critical CSS, async/defer script loading

3. **Large image as LCP element**
   - Diagnosis: Check image size, format, and loading attributes
   - Fixes: Compress images, use modern formats (WebP/AVIF), add `fetchpriority="high"` to LCP image, remove lazy loading from LCP image, use responsive `srcset`

4. **Web font causing LCP text delay**
   - Diagnosis: Check if LCP element uses a web font with visible loading delay
   - Fixes: Use `font-display: swap` or `optional`, preload critical fonts, use system font stack as fallback

5. **Client-side rendering delay**
   - Diagnosis: Check if LCP element depends on JavaScript to render
   - Fixes: Server-side render the LCP element, reduce JS bundle size, use streaming SSR

**Output:** LCP root cause, specific fix recommendations with expected improvement

### Step 3: INP Diagnosis

**INP measures responsiveness — how quickly the page responds to user interactions.**

**Identify slow interactions:**
- In CrUX data, check INP value
- In lab, check Total Blocking Time (TBT) as proxy
- Use Chrome DevTools Performance tab to identify long tasks

**Root cause analysis:**

1. **Long JavaScript tasks (>50ms)**
   - Diagnosis: DevTools → Performance → look for long tasks on main thread
   - Fixes: Break large tasks into smaller chunks using `requestIdleCallback` or `scheduler.yield()`, move work to Web Workers, defer non-critical JS

2. **Heavy event handlers**
   - Diagnosis: Profile click/input handlers for execution time
   - Fixes: Debounce input handlers, virtualise long lists, optimise DOM manipulation, avoid forced synchronous layouts in handlers

3. **Large JavaScript bundles**
   - Diagnosis: Check JS transfer size in Network tab
   - Fixes: Code splitting, tree shaking, lazy loading of non-critical modules, remove unused polyfills

4. **Third-party scripts**
   - Diagnosis: Identify third-party scripts blocking main thread
   - Fixes: Defer third-party loading, use `loading="lazy"` for embeds, evaluate if each third-party is necessary

5. **Excessive DOM size**
   - Diagnosis: Check DOM element count (target: <1500 elements)
   - Fixes: Virtualise long lists, lazy render off-screen sections, simplify DOM structure

**Output:** INP root cause, specific fix recommendations

### Step 4: CLS Diagnosis

**CLS measures visual stability — how much the page layout shifts unexpectedly.**

**Identify layout shifts:**
- In Lighthouse, check "Avoid large layout shifts" diagnostic
- Use DevTools → Performance → check Layout Shift entries
- Use Web Vitals Chrome extension for real-time CLS tracking

**Root cause analysis:**

1. **Images/videos without dimensions**
   - Diagnosis: Check `<img>` and `<video>` tags for width/height attributes
   - Fixes: Always set width and height attributes, use CSS aspect-ratio, use `sizes` with responsive images

2. **Dynamic content injection**
   - Diagnosis: Check for content inserted above existing content after page load
   - Fixes: Reserve space for dynamic content (skeleton screens), insert below the fold, use CSS `contain` property

3. **Web fonts causing text reflow**
   - Diagnosis: Check if text resizes when web font loads (FOUT/FOIT)
   - Fixes: Use `font-display: optional` to prevent reflow, match fallback font metrics with `size-adjust`, preload critical fonts

4. **Ad/embed slots without reserved space**
   - Diagnosis: Check if ad containers resize after ad loads
   - Fixes: Set minimum dimensions on ad containers, use CSS `aspect-ratio` for embeds

5. **Late-loading CSS or DOM changes**
   - Diagnosis: Check for CSS that loads after initial render and changes layout
   - Fixes: Inline critical CSS, load non-critical CSS asynchronously without layout impact

**Output:** CLS root cause, layout shift elements identified, specific fixes

### Step 5: Implement and Verify

**Actions:**
1. Prioritise fixes by impact (fix the worst metric first)
2. Implement fixes one category at a time
3. After each fix, re-run Lighthouse to verify lab improvement
4. Deploy and monitor field data over 28 days (CrUX updates monthly)
5. Compare before/after metrics
6. Document changes and results

**Output:** Implementation checklist with before/after measurements

## Final Output

Deliver a CWV Report with: baseline scorecard, root cause per failing metric, prioritised fix list, implementation guide, and monitoring plan.
