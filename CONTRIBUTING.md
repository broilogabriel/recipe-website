# Recipe Writing Guide

Thank you for contributing to this recipe collection! This guide will help you write recipes that are consistent, clear, and easy to follow.

## Recipe Format

All recipes should be written in Markdown format with YAML frontmatter. Use the template in `content/templates/recipe-template.md` as a starting point.

## Frontmatter Fields

The frontmatter (the section between `---` markers at the top of the file) contains metadata about your recipe.

### Required Fields

- **title**: The name of your recipe
  ```yaml
  title: Classic Chocolate Chip Cookies
  ```

- **tags**: List of relevant tags for categorization
  ```yaml
  tags:
    - cuisine/italian
    - meal/dinner
    - diet/vegetarian
    - quick-meal
  ```

- **prep_time**: Time needed for preparation
  ```yaml
  prep_time: "15 min"
  ```

- **cook_time**: Time needed for cooking
  ```yaml
  cook_time: "30 min"
  ```

- **servings**: Number of servings
  ```yaml
  servings: 4
  ```

- **difficulty**: One of: easy, medium, hard
  ```yaml
  difficulty: easy
  ```

- **date**: Creation date in YYYY-MM-DD format
  ```yaml
  date: 2026-02-07
  ```

### Optional Fields

You can add custom fields as needed:
```yaml
total_time: "45 min"
calories: 350
source: "Grandma's cookbook"
```

## Recommended Tags

### Cuisine Types
- `cuisine/italian`
- `cuisine/mexican`
- `cuisine/chinese`
- `cuisine/indian`
- `cuisine/french`
- `cuisine/american`
- `cuisine/mediterranean`

### Meal Types
- `meal/breakfast`
- `meal/lunch`
- `meal/dinner`
- `meal/snack`
- `meal/dessert`
- `meal/appetizer`

### Dietary Preferences
- `diet/vegetarian`
- `diet/vegan`
- `diet/gluten-free`
- `diet/dairy-free`
- `diet/low-carb`
- `diet/keto`

### Recipe Characteristics
- `quick-meal` (30 minutes or less)
- `one-pot`
- `baking`
- `grilling`
- `slow-cooker`
- `no-cook`
- `make-ahead`
- `freezer-friendly`

## Recipe Structure

### 1. Description

Write a brief, appetizing description of the dish (2-3 sentences):

```markdown
## Description

A quick and delicious pasta with fresh tomato sauce. Perfect for busy weeknights when you want something satisfying and homemade.
```

### 2. Ingredients

List all ingredients with quantities:

```markdown
## Ingredients

- 1 lb spaghetti
- 2 tbsp olive oil
- 4 cloves garlic, minced
- 1 can (28 oz) whole peeled tomatoes
- Salt and pepper to taste
- Fresh basil leaves
- Grated Parmesan cheese for serving
```

**Tips:**
- Use standard abbreviations (tbsp, tsp, oz, lb)
- Be specific about preparation (minced, diced, chopped)
- List ingredients in order of use
- Group ingredients by component for complex recipes

### 3. Instructions

Write clear, numbered steps:

```markdown
## Instructions

1. Bring a large pot of salted water to boil for the pasta.

2. While water heats, make the sauce: Heat olive oil in a large pan over medium heat.

3. Add minced garlic and sauté for 1 minute until fragrant.

4. Add tomatoes, salt, and pepper. Simmer for 15-20 minutes.

5. Cook pasta according to package directions until al dente.

6. Combine pasta with sauce and serve with Parmesan.
```

**Tips:**
- One action per step
- Include timing information
- Mention heat levels (medium heat, high heat)
- Add sensory cues (until golden, until fragrant)
- Keep steps concise but complete

### 4. Notes

Add helpful tips, variations, and storage information:

```markdown
## Notes

- Use San Marzano tomatoes for the best flavor
- Don't overcook the garlic - it can become bitter
- Save pasta water! It helps the sauce cling to the pasta
- Leftovers keep for 3 days in the refrigerator
- Try adding anchovies with the garlic for umami depth
```

## Best Practices

### Writing Style

- **Be clear and concise**: Avoid flowery language in instructions
- **Use active voice**: "Add the flour" not "The flour should be added"
- **Be specific**: "Bake at 350°F for 25-30 minutes" not "Bake until done"
- **Include temperatures**: Always specify oven/cooking temperatures

### Measurements

- Use standard US measurements (cups, tablespoons, teaspoons, ounces, pounds)
- You can include metric conversions in parentheses if desired
- Be precise with baking recipes
- Cooking recipes can be more flexible ("to taste", "as needed")

### Images

To add images to your recipes:

1. Create a folder with the same name as your recipe
2. Add images to that folder
3. Reference them in markdown:

```markdown
![Finished chocolate chip cookies](./Classic%20Chocolate%20Chip%20Cookies/finished-cookies.jpg)
```

### Linking Recipes

Link to other recipes using wiki-style links:

```markdown
Serve with [[Simple Tomato Sauce]] or [[Homemade Pesto]].
```

## Recipe Testing

Before submitting a recipe:

- [ ] Test the recipe at least once
- [ ] Verify all quantities are correct
- [ ] Check cooking times and temperatures
- [ ] Review for typos and clarity
- [ ] Ensure all frontmatter is properly formatted
- [ ] Test that any links work

## Example Recipe

See `content/Recipes/Classic Chocolate Chip Cookies.md` for a complete example following all these guidelines.

## Questions?

If you're unsure about any aspect of recipe formatting, check existing recipes in the collection or open an issue on GitHub.

---

Happy recipe writing! 🍳
