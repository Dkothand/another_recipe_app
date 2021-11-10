from recipe.db import query_db


def get_recipes(id=None):
    res = query_db("SELECT * FROM recipes;")
    return res


def create_recipe(request):
    # TODO
    return False, None
