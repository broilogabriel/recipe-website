# 🍳 My Recipe Collection

A personal recipe website powered by [Quartz](https://quartz.jzhao.xyz/), Obsidian, and GitHub Pages.

## 🌟 Features

- **Beautiful, Fast Website**: Built with Quartz v4 static site generator
- **Markdown-Based**: Write recipes in simple markdown format
- **Full-Text Search**: Quickly find recipes
- **Tag Navigation**: Browse by cuisine, meal type, or dietary preferences
- **Auto-Deployment**: Automatically publishes when you push changes
- **Mobile Friendly**: Responsive design works on all devices

## 🚀 Live Site

Visit the live site at: https://broilogabriel.github.io/recipe-website

## 📝 Adding New Recipes

### Method 1: Direct to Repository

1. Create a new markdown file in the `content/Recipes/` folder
2. Use the template from `content/templates/recipe-template.md`
3. Fill in the frontmatter (title, tags, prep/cook time, etc.)
4. Write your recipe in markdown
5. Commit and push to GitHub

### Method 2: Using Obsidian (Recommended)

1. Open the `content/` folder as an Obsidian vault (or link your existing vault)
2. Create new recipes using the template
3. Use Obsidian's powerful features (templates, tags, links)
4. Install the Obsidian Git plugin for auto-sync
5. Changes automatically deploy to the website!

## 🔧 Local Development

```bash
# Clone the repository
git clone https://github.com/broilogabriel/recipe-website.git
cd recipe-website

# Install dependencies
npm install

# Run development server
npx quartz build --serve

# Open http://localhost:8080
```

## 📚 Documentation

- See [CONTRIBUTING.md](CONTRIBUTING.md) for recipe writing guidelines
- See the [Quartz Documentation](https://quartz.jzhao.xyz/) for customization

---

**Enjoy cooking!** 🍳👨‍🍳👩‍🍳
