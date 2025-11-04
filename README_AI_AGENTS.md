# ZSH Configuration for AI Agents

## Overview

This zsh configuration is split into two parts to separate essential functionality from interactive UI features:

- **`~/.zshrc_core`** - Essential configuration (env vars, PATH, aliases, functions)
- **`~/.zshrc_interactive`** - Interactive UI features (P10k prompt, plugins, keybindings)

## For AI Coding Agents

AI agents should **only source `~/.zshrc_core`** to get the essential environment without loading slow interactive features.

### Configuration Examples

**For agents that use zsh:**
```zsh
# In your agent's shell initialization, add:
source ~/.zshrc_core
```

**For agents that allow shell profile customization:**
- Point to `~/.zshrc_core` instead of `~/.zshrc`
- Or configure to skip interactive shell features

## For Human Users

Human users get the full experience automatically:
- `~/.zshrc` loads `~/.zshrc_core` first (essential config)
- Then conditionally loads `~/.zshrc_interactive` for interactive shells only

## What's Included Where

### In `~/.zshrc_core` (for AI agents):
- Environment variables (CLICOLOR, HISTSIZE, FZF settings, etc.)
- PATH setup (handled by `~/.zshenv`)
- Essential aliases (docker, git, navigation)
- Essential functions (docker_compose_rm, etc.)
- History configuration

### In `~/.zshrc_interactive` (humans only):
- Powerlevel10k prompt
- Antidote plugin manager
- zsh-autosuggestions
- zsh-syntax-highlighting
- zsh-history-substring-search
- FZF keybindings
- Vi mode keybindings

## Testing

Test that core config works without interactive features:
```zsh
zsh -c 'source ~/.zshrc_core; alias dc'
```

Test full interactive shell:
```zsh
zsh -i -c 'alias dc; type prompt'
```
