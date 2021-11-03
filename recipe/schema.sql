DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS recipe_ingredients;
DROP TABLE IF EXISTS measurement_quantities;
DROP TABLE IF EXISTS measurement_units;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS meals;

CREATE TABLE measurement_quantities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    quantity TEXT NOT NULL
);

CREATE TABLE measurement_units (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    unit TEXT NOT NULL
);

CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE meals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT CHECK (name IN ('GENERAL', 'BREAKFAST', 'LUNCH', 'DINNER')) DEFAULT 'GENERAL'
);

CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE NOT NULL,
    description TEXT,
    instructions TEXT,
    meal_id INTEGER,
    FOREIGN KEY (meal_id) REFERENCES meals (id)
);

CREATE TABLE recipe_ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    recipe_id INTEGER NOT NULL,
    measurement_quantity_id INTEGER NOT NULL,
    measurement_unit_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES recipes (id),
    FOREIGN KEY (measurement_quantity_id) REFERENCES measurement_quantities (id),
    FOREIGN KEY (measurement_unit_id) REFERENCES measurement_units (id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients (id)
);
