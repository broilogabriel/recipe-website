# Obsidian Integration Guide

This guide explains how to integrate your Obsidian vault with this recipe website for seamless auto-publishing.

## Option 1: Use the Repository's content Folder as Your Vault

This is the simplest approach:

1. Open Obsidian
2. Click "Open folder as vault"
3. Navigate to `/home/gabriel/projects/cooking/recipe-website/content`
4. Your recipes in the `Recipes/` folder will be directly in the repository

## Option 2: Link Your Existing Obsidian Vault

If you already have an Obsidian vault with recipes, use the provided script:

```bash
cd /home/gabriel/projects/cooking/recipe-website
./link-vault.sh
```

This will:
- Prompt you for your Obsidian vault path
- Create a symbolic link from your vault to the repository
- Allow you to keep your vault in its current location

## Setting Up Auto-Sync with Obsidian Git Plugin

### 1. Install Obsidian Git Plugin

1. Open Obsidian Settings (Ctrl+,)
2. Go to **Community plugins**
3. Click **Browse** and search for "Obsidian Git"
4. Click **Install**, then **Enable**

### 2. Configure Obsidian Git

Go to **Settings → Obsidian Git** and configure:

#### Basic Settings
- **Vault backup interval (minutes)**: `10`
  - Auto-commits every 10 minutes
  
- **Auto pull interval (minutes)**: `10`
  - Pulls changes from GitHub every 10 minutes
  
- **Auto push interval (minutes)**: `10`
  - Pushes to GitHub every 10 minutes

#### Commit Message Settings
- **Commit message**: `vault backup: {{date}}`
- **Commit date format**: `YYYY-MM-DD HH:mm:ss`

#### Advanced Settings
- **Pull updates on startup**: ✅ Enabled
- **Pull before push**: ✅ Enabled
- **Show status bar**: ✅ Enabled
- **Disable notifications**: Your preference

### 3. Initial Git Configuration

If this is your first time using Git in the Obsidian vault:

1. Open a terminal in your Obsidian vault folder
2. Run these commands:

```bash
git remote add origin https://github.com/broilogabriel/recipe-website.git
git pull origin main
```

### 4. Test the Setup

1. Create a new recipe in Obsidian
2. Wait 10 minutes (or use Ctrl+P → "Obsidian Git: Commit all changes")
3. Check GitHub - your recipe should appear
4. Wait 2-3 minutes for GitHub Actions to build
5. Visit https://broilogabriel.github.io/recipe-website/ to see your new recipe!

## Workflow Summary

Here's what happens when you add or edit a recipe:

1. **You edit** a recipe in Obsidian
2. **Obsidian Git** auto-commits and pushes to GitHub (every 10 minutes)
3. **GitHub Actions** detects the push and builds the site
4. **GitHub Pages** publishes the updated site (usually within 2-3 minutes)
5. **Your site** is automatically updated!

## Using Recipe Templates in Obsidian

### Setting Up Templater Plugin (Recommended)

1. Install the **Templater** plugin from Community Plugins
2. In Templater settings, set template folder to: `templates`
3. Create recipes using Ctrl+P → "Templater: Insert Template"

### Basic Template Usage

Without Templater, you can:
1. Copy `content/templates/recipe-template.md`
2. Paste into a new note in `Recipes/` folder
3. Fill in the details

## Tips for Recipe Writing

### Use Tags for Organization

```yaml
tags:
  - cuisine/italian      # Organize by cuisine
  - meal/dinner         # Organize by meal type
  - diet/vegetarian     # Organize by diet
  - quick-meal          # For 30-min or less recipes
  - make-ahead          # For prep-ahead recipes
```

### Link Between Recipes

Use wiki-links to reference other recipes:
```markdown
Serve with [[Simple Tomato Sauce]] or try our [[Homemade Pizza Margherita]].
```

### Add Images

1. Create a folder with your recipe name in `Recipes/`
2. Add images to that folder
3. Reference in markdown:
```markdown
![Finished dish](./Recipe%20Name/finished-dish.jpg)
```

## Troubleshooting

### Obsidian Git Shows "Not a Git Repository"

Initialize git in the vault:
```bash
cd /path/to/your/vault
git init
git remote add origin https://github.com/broilogabriel/recipe-website.git
git pull origin main
```

### Changes Not Syncing

1. Check the status bar - it should show "✓" or a sync icon
2. Open Command Palette (Ctrl+P) → "Obsidian Git: Open source control view"
3. Check for uncommitted changes or conflicts

### Authentication Issues

If Obsidian Git can't push:
1. Make sure you've set up GitHub authentication
2. Consider using GitHub CLI: `gh auth login`
3. Or set up an SSH key for GitHub

## Manual Sync Commands

You can trigger these from Command Palette (Ctrl+P):

- **Obsidian Git: Commit all changes** - Commit now
- **Obsidian Git: Push** - Push to GitHub now
- **Obsidian Git: Pull** - Pull from GitHub now
- **Obsidian Git: Open source control view** - See Git status

## Best Practices

1. **Write recipes consistently** - Follow the template format
2. **Use descriptive filenames** - "Classic Chocolate Chip Cookies.md"
3. **Tag appropriately** - Makes browsing easier
4. **Test locally first** - Run `npx quartz build --serve` before pushing major changes
5. **Keep images reasonable** - Optimize images to keep site fast

## Additional Obsidian Plugins

Consider these plugins for better recipe management:

- **Dataview** - Query and create dynamic recipe lists
- **Tag Wrangler** - Manage tags easily
- **Quick Switcher++** - Better file navigation
- **Calendar** - Track when you added recipes

---

Happy recipe writing! Your recipes will automatically publish to your website. ✨
