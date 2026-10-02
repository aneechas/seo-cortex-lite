# SEO Quality Gates

## Purpose

Quality thresholds and minimum standards for all SEO agent outputs. Every finding, recommendation, and report must pass these gates before delivery.

## Audit Scoring Thresholds

| Score Range | Rating | Meaning |
|------------|--------|---------|
| 90-100 | Excellent | Minor optimisations only, maintain current trajectory |
| 75-89 | Good | Targeted improvements needed, no critical issues |
| 50-74 | Needs Work | Significant issues requiring sustained effort |
| 25-49 | Poor | Fundamental problems, major overhaul required |
| 0-24 | Critical | Severe deficiencies, immediate intervention needed |

## Evidence Requirements

Every finding must include:
- **What**: Clear description of the issue or opportunity
- **Where**: Specific URLs, elements, or data points
- **Evidence**: How the finding was verified (tool output, manual check, data source)
- **Impact**: Expected effect on rankings, traffic, or user experience (H/M/L)
- **Effort**: Resources required to address (H/M/L)

Findings without evidence are not findings — they are opinions.

## Confidence Levels

| Level | Definition | When to Use |
|-------|-----------|-------------|
| High (90%+) | Supported by multiple data sources, clear evidence | Direct observation, GSC data, technical fact |
| Medium (60-89%) | Supported by one data source or strong inference | Single tool output, pattern-based assessment |
| Low (30-59%) | Educated assessment, limited data | Industry benchmarks, analogous cases |
| Speculative (<30%) | Hypothesis only | Must be clearly labelled as speculative |

## Minimum Quality Standards

### For Recommendations
- Every recommendation must cite the finding it addresses
- Impact estimate must be provided (even if approximate)
- Effort estimate must be realistic
- No recommendation without a clear owner (which agent or team)
- No vague recommendations — "improve content" is not actionable

### For Reports
- Executive summary required (3-5 sentences maximum)
- All data must be dated (when was it collected?)
- Trends must cover at least 3 data points (not just current state)
- Competitor comparisons must use the same methodology
- Next steps must be specific and assignable

### For Technical Changes
- No indexation changes without explicit approval
- No redirect implementations without a complete redirect map
- No robots.txt changes without impact assessment
- All schema changes must be validated before and after

## Escalation Triggers

Escalate to seo-head immediately when:
- A finding indicates potential Google penalty or manual action
- Technical changes could affect more than 20% of indexed pages
- Competitor analysis reveals urgent strategic threat
- Data suggests significant traffic loss (>15% month-over-month)
- A recommendation conflicts with business constraints
