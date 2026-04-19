# opencode-workflow

Standalone opencode package with agent definitions and skill configurations for orchestrating ticket-to-PR development workflows.

## Installation

```bash
./install.sh
```

By default, files are installed to `~/.config/opencode/`. To override the destination:

```bash
OPENCODE_CONFIG_DIR=/custom/path ./install.sh
```

## Contents

- **agents/** — Agent definitions for orchestrating development workflows
- **skills/** — Skill configurations for domain-specific guidance

## Usage

After installation, these agents and skills are available to opencode sessions configured to use `~/.config/opencode/` as the config directory.

## Uninstaller

To remove installed files:

```bash
rm -rf ~/.config/opencode/agents ~/.config/opencode/skills
```
