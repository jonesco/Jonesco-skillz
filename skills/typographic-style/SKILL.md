---
name: "typographic-style"
description: "Apply Bringhurst's Elements of Typographic Style to any text, CSS, UI, document, or design: audit, correct, and set type to classical standards."
---

# Typographic Style

Principles drawn from Robert Bringhurst's *The Elements of Typographic Style* (v4.0), adapted for print, web, and product UI. Use them to audit existing work or to set new work. Paraphrase the book; never quote it at length.

## Core stance

- Typography serves the text. Every choice should make the content easier to read and truer to its character.
- Default to calm, legible, conventional. Depart from convention only with a reason you can state.
- Consistency is a form of honesty. One rule, applied everywhere, beats ten clever exceptions.

## How to apply this skill

1. Identify the medium: running copy, CSS/HTML, Figma/UI, document (docx, Docs, PDF), slides, or data tables.
2. Audit against the checklist below. Note each issue with location, rule, and fix.
3. Fix what you can directly (edit text, CSS, styles). For design files, give exact values.
4. Report tersely: what changed, what still needs a human decision. No lectures.

## 1. Horizontal motion: measure and spacing

- Measure for single-column text: 45 to 75 characters, 66 ideal. Multi-column: 40 to 50. In CSS use `max-width` in `ch` (about 60 to 70ch) rather than fixed px.
- Word space should be even and modest. Avoid loose, rivered justified text; prefer flush left, ragged right on screen and wherever hyphenation is weak.
- If justifying, hyphenation must be on and tuned. Avoid more than two consecutive hyphenated lines; avoid hyphenating proper names and very short words.
- Ragged right should be a gentle rag, not a jagged one. Avoid single short words stranded at line ends where it is controllable.
- Never letterspace lowercase text body. Do letterspace (track) all caps and small caps slightly, roughly 5 to 10 percent (`letter-spacing: 0.05em` to `0.1em`).
- Kern consistently; enable `font-kerning: normal`. Fix obvious bad pairs in display sizes.
- Use the right spaces: a single word space after periods, never two. Thin or no-break spaces where warranted (between a number and its unit, in initials).

## 2. Vertical motion: leading and rhythm

- Pick a base leading and treat it as the unit of the page. Body leading typically 1.3 to 1.5 times the size for text; tighter for display (1.0 to 1.2), looser for long measures.
- Space between paragraphs, headings, lists, and figures should be multiples of the base leading so the text keeps a steady rhythm.
- Mark paragraphs either with an indent (about 1 em, none after headings) or with space between, not both.
- Headings get more space above than below so they belong to what follows.
- Avoid widows and orphans in print and long-form layout. On the web use `text-wrap: pretty` for paragraphs and `text-wrap: balance` for headings.

## 3. Scale and hierarchy

- Use a deliberate scale, not arbitrary sizes. A classical scale or a consistent ratio (for example 1.2 or 1.25) is fine; mixing systems is not.
- Use as few sizes, weights, and styles as the structure needs. Contrast should come from one variable at a time where possible (size, or weight, or style).
- Italic is for emphasis, titles, and foreign words. Bold is for strong signposting, used sparingly. Never fake bold, italic, or small caps; use true fonts.
- Underline is for links on screen, not emphasis.

## 4. Characters and punctuation

- Use true quotes and apostrophes (curly), never straight primes for quotation. Primes are for feet, inches, minutes, seconds.
- Hyphen joins words. En dash for ranges (9–5, pages 12–19) and some compounds. For parenthetical breaks prefer a spaced en dash or recast the sentence; if the house style bans em dashes, rewrite rather than substitute a hyphen.
- True ellipsis character or evenly spaced dots, consistent throughout.
- True multiplication sign (×), minus sign (−), and fractions where relevant.
- Punctuation that hangs (quotes, hyphens at line edges) can be optically aligned in display settings (`hanging-punctuation` where supported).

## 5. Numerals, capitals, abbreviations

- Text figures (oldstyle) in running prose where the font has them; lining figures with capitals and in UI labels.
- Tabular figures in tables, prices, timestamps, anything that aligns or updates (`font-variant-numeric: tabular-nums`). Proportional figures in prose.
- Acronyms and runs of capitals in body text: small caps or slightly reduced, tracked caps (`font-variant-caps: all-small-caps` when supported by the font).
- Avoid setting long passages in all caps.

## 6. Typeface choice

- Choose faces whose character suits the text and whose design history is coherent with it.
- Body faces need a full character set: real italics, small caps or a plan for them, text and lining figures, good kerning.
- Pair faces sparingly. Usually one family, or two that share structure (proportion, x-height, stroke logic). Don't pair two faces that are almost alike.
- Respect the face: no artificial condensing, stretching, slanting, or outlining.

## 7. Tables, lists, structural elements

- Edit tables for reading, not decoration. Remove rules that do no work; use space and alignment to group.
- Align numbers on the decimal (right-align integers), text flush left. Headings align with their data.
- Lists: consistent indent, hanging bullets or numbers so text aligns, same leading as body.
- Notes, captions, and running heads in a smaller size or different style, kept quiet and consistent.

## 8. Page and layout

- Choose proportions deliberately (golden section, 2:3, or other classical ratios for print; consistent grids on screen).
- Margins should frame the text block and give hands and eyes room. Generous outer and bottom margins for print.
- Text block, grid, and baseline should relate. Images and figures sit on the same rhythm.

## 9. Screen and UI adaptations

- Body text typically 16 to 18px on screen, line-height around 1.4 to 1.6, measure in `ch`.
- Use rem-based type tokens built on one scale; tie spacing tokens to the base line-height.
- UI labels: lining tabular figures, sentence case, restraint with weight. Avoid all-caps labels unless tracked.
- Check contrast and rendering at real sizes and on real devices. Dark mode often needs slightly lighter weight or more leading.

## Output format

For audits, list issues as: `Location · Rule · Fix`. Group by severity (breaks reading, inconsistent, polish). For CSS, deliver a corrected snippet or token set. For text, return the corrected text with typographic characters fixed. Keep commentary short.