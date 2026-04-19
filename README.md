# opencode-workflow

Standalone opencode package providing agent definitions and skill configurations for orchestrating ticket-to-PR development workflows.

## Tech Stack Overview

- **Purpose**: AI-assisted development orchestration (Requirements → Design → Sprint Plan → Implementation → Code Review → Pull Request)
- **Agents**: 29 specialized sub-agents for task execution, code review, quality assurance, and more
- **Skills**: 7 skill configurations including dev-orchestrator, subagents-orchestration-guide, coding-principles, and testing-principles

## 5-Minute Setup Guide

```bash
# Clone the repository
git clone https://github.com/your-repo/opencode-workflow.git
cd opencode-workflow

# Run the installer
./install.sh

# Or install to custom location
OPENCODE_CONFIG_DIR=/custom/path ./install.sh
```

## Architecture & Key Directories

- `agents/` - 29 markdown-based agent definitions (task-executor, code-reviewer, requirement-analyzer, etc.)
- `skills/` - 7 skill configurations organized by domain
- `install.sh` - Installation script that copies agents and skills to `~/.config/opencode/`

### Skills Structure

| Skill | Description |
|-------|-------------|
| `dev-orchestrator/` | Main orchestrator for ticket-to-PR workflow |
| `subagents-orchestration-guide/` | Coordination guide for sub-agent delegation |
| `coding-principles/` | Language-agnostic coding standards |
| `testing-principles/` | TDD and test quality guidelines |
| `ai-development-guide/` | Technical decision criteria and anti-patterns |
| `documentation-criteria/` | PRD, ADR, and Design Doc requirements |
| `implementation-approach/` | Implementation strategy selection framework |

### Agents Structure

Key agents used by the orchestrator:

- **requirement-analyzer** - Scale determination and requirements analysis
- **technical-designer** - Design document creation
- **work-planner** - Sprint planning from design docs
- **task-decomposer** - Task breakdown from work plans
- **task-executor** - Individual task implementation
- **quality-fixer** - Quality assurance and linting
- **code-reviewer** - Post-implementation code review
- **context-keeper** - Session memory accumulation

## Usage

After installation, load the dev-orchestrator skill in an opencode session:

```
skill(name="dev-orchestrator")
```

Then provide a ticket description to begin the automated workflow.

## Uninstaller

```bash
rm -rf ~/.config/opencode/agents ~/.config/opencode/skills
```

## License

MIT License - see LICENSE file
