# Jonesco Skillz

Wes Jones's skills for Claude.

| Skill | What it does |
| --- | --- |
| [typographic-style](skills/typographic-style/SKILL.md) | Applies Bringhurst's *Elements of Typographic Style* to text, CSS, UI, documents, and design. |
| [words-are-hard](skills/words-are-hard/SKILL.md) | Rewrites prose so it reads like a person wrote it. |
| [organize-desktop](skills/organize-desktop/SKILL.md) | Sorts Desktop files into topic folders, with UI screenshots in their own folder. |

## Layout

```
skills/<skill-name>/SKILL.md   one folder per skill, plus any scripts or references it needs
scripts/package.sh             builds upload zips into dist/
.claude-plugin/                lets Claude Code install the repo as a plugin
```

## Use in Claude (app or claude.ai)

```sh
./scripts/package.sh                  # zips every skill
./scripts/package.sh typographic-style # zips one
```

Upload `dist/<skill-name>.zip` under Settings > Capabilities > Skills. Re-upload after edits.

## Use in Claude Code

```sh
/plugin marketplace add jonesco/Jonesco-skillz
/plugin install jonesco-skillz@jonesco-skillz
```

Or copy a folder into `~/.claude/skills/`.

## Adding a skill

1. Create `skills/<skill-name>/SKILL.md` with `name` and `description` in the frontmatter. The folder name should match `name`.
2. Add a row to the table above.
3. Run `./scripts/package.sh <skill-name>` and upload.
