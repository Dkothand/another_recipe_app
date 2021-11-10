from flask import Blueprint
from recipe.api import get_recipes


bp = Blueprint('recipe', __name__, url_prefix='/recipe')


@bp.route('/')
def recipe():
    return get_recipes()
