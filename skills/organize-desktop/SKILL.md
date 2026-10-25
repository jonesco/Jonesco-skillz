---
name: organize-desktop
description: >
  Organizes the Desktop folder by grouping files into smart, topic-based folders.
  Images that look like UI screenshots (app interfaces, web pages, dialogs) get moved
  into a dedicated "UI Screenshots" folder. All other files are grouped into sensible
  categories based on their filenames and types.

  Trigger this skill whenever the user says things like: "organize my desktop",
  "clean up my desktop", "tidy my desktop", "sort my desktop", "my desktop is a mess",
  or "put my desktop files into folders". Even vague requests like "can you help me
  clean up?" in the context of files should trigger this skill.
---

# Desktop Organizer

Your job is to bring order to the Desktop by moving files into folders that make
sense. The goal is a desktop that's easy to scan — not dozens of flat files, but a
handful of well-named folders.

## The Desktop Path

The Desktop lives at: `/sessions/bold-charming-keller/mnt/Desktop/`

Work only on **loose files** (not existing folders). Don't touch subdirectories.

## Step 1 — Survey the Desktop

List all files on the Desktop:

```bash
ls -la /sessions/bold-charming-keller/mnt/Desktop/
```

Note each file's name and extension. You'll use this to make grouping decisions.
Skip any items that are already directories.

## Step 2 — Identify UI Screenshots

UI screenshots are images that show software interfaces: app windows, web pages,
dialog boxes, error messages, settings panels, dashboards, code editors, etc.
Regular photos (people, nature, objects) are NOT UI screenshots.

**First pass — filename patterns:**

These filename patterns strongly suggest UI screenshots. Flag them:
- `Screenshot*`, `Screen Shot*`, `screen-shot*`
- `Capture*`, `Snagit*`, `CleanShot*`
- `Screen Recording*`, `Screencast*`
- Anything with `_UI_`, `_ui_`, `-ui-` in the name

**Second pass — visual check for ambiguous images:**

For any `.png`, `.jpg`, `.jpeg`, `.webp` file that *didn't* match the patterns above
but *could* be a screenshot (e.g., it's named something like `image001.png` or
`untitled.png`), use the `Read` tool to look at the image and decide:

- Does it show a software interface, web page, or app? → UI Screenshot
- Is it a photo, illustration, or non-UI graphic? → Not a UI screenshot

Skip visual checks for images with clearly non-UI names (e.g., `family_photo.jpg`,
`logo_final.png`, `headshot.jpeg`).

**Outcome**: You now have a list of confirmed UI screenshot files.

## Step 3 — Group the Remaining Files

For everything that isn't a UI screenshot, think about what belongs together.
The goal is 2–6 folders total (UI Screenshots plus a few others) — not a folder
per file. Avoid making folders with only one item unless it's clearly a standalone
project.

**How to group:**

Look at filenames holistically. Ask yourself:
- Are there files that clearly belong to the same project or client? (e.g.,
  `AcmeCorp_proposal.docx`, `AcmeCorp_invoice.pdf` → `AcmeCorp/`)
- Are there a lot of one type? (e.g., 8 PDFs → maybe `PDFs/`, or group by topic)
- Is there a date-based pattern? (e.g., lots of `2024_*` files → `2024/`)
- Are there misc one-offs that don't belong to a clear group? → `Misc/` or leave
  them flat (use judgment — a tidy desktop doesn't need a folder for everything)

**Good folder naming:**
- Use the project/client name when obvious: `JonesProject/`, `TaxDocs/`
- Use type when content is generic: `PDFs/`, `Images/`, `Spreadsheets/`
- Capitalize naturally: `Design Assets/` not `design_assets`
- Keep names short and scannable

## Step 4 — Execute the Moves

Once you know the plan:

1. Create folders that don't exist yet:
   ```bash
   mkdir -p "/sessions/bold-charming-keller/mnt/Desktop/UI Screenshots"
   mkdir -p "/sessions/bold-charming-keller/mnt/Desktop/FolderName"
   ```

2. Move files (quote paths to handle spaces):
   ```bash
   mv "/sessions/bold-charming-keller/mnt/Desktop/Screenshot 2024-01-01.png" \
      "/sessions/bold-charming-keller/mnt/Desktop/UI Screenshots/"
   ```

Move all files, then report what you did.

## Step 5 — Report

Give the user a quick summary of what happened. Keep it brief — a few lines
listing the folders you created and roughly how many files went into each.
Don't list every single file moved.

Example:
> Organized 23 files into 4 folders:
> - **UI Screenshots/** — 11 files (app screenshots, web captures)
> - **AcmeCorp/** — 6 files (proposals, invoices, notes)
> - **PDFs/** — 4 files
> - **Images/** — 2 files

## Edge Cases

- **Empty desktop**: Say so and stop.
- **Already organized (only folders, no loose files)**: Say the desktop looks
  tidy and stop.
- **Single file**: Just note it's there; creating a folder for one file isn't useful.
- **Files with no clear grouping**: Use a `Misc/` folder sparingly — only if
  there are 3+ ungroupable files.
- **Hidden files** (starting with `.`): Leave them alone.
