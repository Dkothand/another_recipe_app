/*
Example recipe
Recipe:
name: Cheese Omelette
description: A simple cheese omelette
instructions: "Heat pan. Add butter, wait until butter foams. Beat eggs and add to pan"
              "Push curds in gradually. Add cheese once it sets. Fold over and serve"

ingredients:
- 4 eggs
- 1/4 cup cheese
- butter

*/

INSERT INTO recipes (name, description, instructions, meal)
    VALUES ("Cheese Omelette", "A simple cheese omelette",
    "Heat pan. Add butter, wait until butter foams. Beat eggs and add to pan. \
    Push curds in gradually. Add cheese once it sets. Fold over and serve",
    "BREAKFAST")
