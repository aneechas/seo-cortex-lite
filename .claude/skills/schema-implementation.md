---
name: schema-implementation
description: Structured data guide — JSON-LD patterns, page-type mapping, validation procedure
---

# Schema Implementation Procedure

## Purpose

Guide for implementing structured data (JSON-LD) across a website. Covers which schema types to use for which page types, implementation patterns, validation procedures, and common pitfalls.

## Prerequisites

- Site URL and page type inventory
- Understanding of site content categories
- Access to page templates or source code
- Google Rich Results Test access

## Procedure

### Step 1: Page Type to Schema Mapping

**Map every page type to appropriate schema:**

| Page Type | Primary Schema | Supporting Schema |
|----------|---------------|------------------|
| Homepage | Organisation or WebSite | SearchAction, SiteNavigationElement |
| About page | Organisation or Person | sameAs, contactPoint |
| Blog post | Article or BlogPosting | Author (Person), BreadcrumbList |
| Product page | Product | Offer, AggregateRating, Review, BreadcrumbList |
| Service page | Service | Offer, Provider (Organisation), BreadcrumbList |
| FAQ page | FAQPage | Question, Answer |
| How-to guide | HowTo | HowToStep, HowToTool, HowToSupply |
| Contact page | ContactPage | PostalAddress, contactPoint |
| Local business | LocalBusiness | OpeningHoursSpecification, GeoCoordinates |
| Event page | Event | Location, Offer, Performer |
| Recipe | Recipe | NutritionInformation, AggregateRating |
| Review page | Review | itemReviewed, Rating |
| Category/list | CollectionPage or ItemList | ListItem, BreadcrumbList |
| Video page | VideoObject | Clip, BroadcastEvent |

### Step 2: Core Schema Patterns (JSON-LD)

**Organisation (homepage or about page):**
```json
{
  "@context": "https://schema.org",
  "@type": "Organisation",
  "name": "Company Name",
  "url": "https://example.com",
  "logo": "https://example.com/logo.png",
  "description": "Brief company description",
  "sameAs": [
    "https://www.linkedin.com/company/example",
    "https://twitter.com/example"
  ],
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+44-xxx-xxx-xxxx",
    "contactType": "customer service"
  }
}
```

**Article/BlogPosting:**
```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Article Title",
  "description": "Article summary",
  "author": {
    "@type": "Person",
    "name": "Author Name",
    "url": "https://example.com/about/author"
  },
  "publisher": {
    "@type": "Organisation",
    "name": "Publisher Name",
    "logo": { "@type": "ImageObject", "url": "https://example.com/logo.png" }
  },
  "datePublished": "2026-01-15",
  "dateModified": "2026-06-20",
  "image": "https://example.com/images/article-hero.jpg",
  "mainEntityOfPage": { "@type": "WebPage", "@id": "https://example.com/article-url" }
}
```

**FAQPage:**
```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is the question?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "The answer to the question."
      }
    }
  ]
}
```

**BreadcrumbList (use on every page):**
```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://example.com" },
    { "@type": "ListItem", "position": 2, "name": "Blog", "item": "https://example.com/blog" },
    { "@type": "ListItem", "position": 3, "name": "Article Title" }
  ]
}
```

**LocalBusiness:**
```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Business Name",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 High Street",
    "addressLocality": "London",
    "postalCode": "SW1A 1AA",
    "addressCountry": "GB"
  },
  "geo": { "@type": "GeoCoordinates", "latitude": 51.5074, "longitude": -0.1278 },
  "openingHoursSpecification": [
    { "@type": "OpeningHoursSpecification", "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"], "opens": "09:00", "closes": "17:00" }
  ],
  "telephone": "+44-xxx-xxx-xxxx",
  "url": "https://example.com"
}
```

### Step 3: Implementation Method

**Actions:**
- Use JSON-LD format (Google's recommended format)
- Place `<script type="application/ld+json">` in the `<head>` or end of `<body>`
- For frameworks (Next.js, React): use structured data components
- For CMS (WordPress): use plugins (Yoast, Rank Math) or custom functions
- Multiple schema types can exist on one page (use an array or separate script tags)
- Ensure all data in schema matches visible page content exactly

### Step 4: Validation Procedure

**Actions:**
1. Validate syntax: paste JSON-LD into a JSON validator (no trailing commas, proper escaping)
2. Test with Google Rich Results Test: https://search.google.com/test/rich-results
3. Check Schema.org validator: https://validator.schema.org/
4. Review GSC Enhancements reports for structured data errors
5. For each validation:
   - Fix all errors (required properties missing, invalid values)
   - Address warnings (recommended properties missing)
   - Verify data accuracy (schema data = visible content)
6. Re-validate after fixes
7. Monitor GSC Enhancements for ongoing issues

### Step 5: Common Pitfalls to Avoid

- **Data mismatch**: Schema says price is £50 but page shows £55 → Google may penalise or ignore
- **Invisible content**: Schema references content not visible to users → violation of guidelines
- **Over-marking**: Using Review schema on pages without genuine reviews
- **Missing required properties**: Each schema type has required fields — check schema.org docs
- **Stale dates**: dateModified not updated when content changes
- **Self-referencing reviews**: Marking up your own reviews of your own business
- **FAQ abuse**: Using FAQPage schema for content that isn't genuinely FAQ format

## Final Output

Deliver a Schema Implementation Plan with: page type inventory, recommended schema per page type, JSON-LD templates, validation results, and implementation instructions for the site's technology stack.
