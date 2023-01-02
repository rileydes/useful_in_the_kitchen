import '../model/ingredient_model.dart';
import '../model/recipe_model.dart';

List<RecipeModel> recipeData = [
   RecipeModel(
    title:"Orange Vanilla Creamsicle Smoothie",
    description:"An orange-creamsicle-inspired smoothie that combines fresh oranges and Greek yogurt for a sweet pick-me-up.",
    tags:[],
    ingredients:[
      IngredientModel(
        quantity: 2,
        units: "",
        name: "fresh oranges"
      ),
      IngredientModel(
          quantity: 1,
          units: "cup",
          name: "ice cubes"
      ),
      IngredientModel(
          quantity: 1/2,
          units: "cup",
          name: "Greek vanilla yogurt"
      ),
      IngredientModel(
          quantity: 2,
          units: "Tbsp",
          name: "oatmilk"
      ),
      IngredientModel(
          quantity: 1,
          units: "tsp",
          name: "vanilla extract"
      ),
    ],
    imageURLs:[
      "https://justarecipe.github.io/assets/images/orange-vanilla-creamsicle-smoothie.JPG"
    ],
    steps:[
      "Use a knife to cut away the orange peel, leaving only the fruit. ",
      "Add all the ingredients to a Vitamix blender (or similarly high-powered mixer). Secure lid and start blending on low. Slowly increase speed to 10 and blend for 30 seconds or until the smoothie reaches a consistent texture.",
      "Pour into two glasses and top with whipped cream, if desired."
    ],
  ),
  RecipeModel(
    title:"Creamy Vegetarian Tortellini Soup",
    description:"This tortellini soup is vegetarian but packs a lot of flavor and you may not even miss the meat. Pair with crusty French bread.",
    tags:[
      "Vegetarian"
    ],
    ingredients: [
      IngredientModel(
        quantity: 1,
        units: "tablespoons",
        name: "Olive Oil"
      ),
      IngredientModel(
          quantity: 1,
          units: "small",
          name: "Finely Chopped Onion"
      ),
      IngredientModel(
          quantity: 3,
          units: "cloves",
          name: "Minced Garlic"
      ),
      IngredientModel(
          quantity: 14.5,
          units: "ounces",
          name: "Canned Diced Tomatoes"
      ),
      IngredientModel(
          quantity: 0.5,
          units: "teaspoon",
          name: "Italian Seasoning"
      ),
      IngredientModel(
          quantity: 0.25,
          units: "teaspoon",
          name: "Granulated Garlic"
      ),
      IngredientModel(
          quantity: 0.25,
          units: "teaspoon",
          name: "Onion Powder"
      ),
      IngredientModel(
          quantity: 0.25,
          units: "teaspoon",
          name: "Salt"
      ),
      IngredientModel(
          quantity: 0.13,
          units: "teaspoon",
          name: "Ground Black Pepper"
      ),
      IngredientModel(
          quantity: 0.5,
          units: "teaspoon",
          name: "Italian Seasoning"
      ),
      IngredientModel(
        quantity: 2.5,
        units: "cups",
        name: "Vegetable Broth"
      ),
       IngredientModel(
         quantity: 1,
         units: "",
         name: "Sliced Zucchini"
       ),
      IngredientModel(
        quantity: 9,
        units: "ounces",
        name: "Cheese Tortellini"
      ),
      IngredientModel(
        quantity: 0.5,
        units: "cup",
        name: "Heavy Whipping Cream"
      ),
      IngredientModel(
        quantity: 0.5,
        units: "cup",
        name: "Grated Parmesan Cheese"
      )
    ],
    imageURLs:[
      "https://www.allrecipes.com/thmb/uDcgHcuQzUNNH9gK7rV5pEc8a4E=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16672601329CA686DA-A42B-49ED-9813-DBCBF735AC11-2000-cf55a7756f534527baa8ce6b95021a60.jpeg",
    ],
    prepTime: 10,
    steps: [
      "Heat olive oil in a saucepan until shimmering over medium heat. Add chopped onions and cook until soft and translucent, about 5 minutes. Add garlic and cook until fragrant, about 45 seconds. Add 1/2 of diced tomatoes with liquid. Season with Italian seasoning, garlic, onion powder, salt, and pepper. Stir to combine.",
      "Add in half of the diced tomatoes with liquid. Add in Italian seasoning, salt, pepper, garlic granules and onions powder. Stir to combine.",
      "Pour remaining tomatoes into a bowl and puree with an immersion blender. Add to sauce with vegetable broth.",
      "Mix in zucchini and tortellini. Cover and cook until tortellini float on the top and are cooked through, 8 to 10 minutes.",
      "Stir in cream and cheese until well combined. Taste and adjust seasoning to taste. Serve immediately."
    ],
  ),
];