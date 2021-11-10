from flask import Blueprint, jsonify, request
from recipe.api import create_recipe, get_recipes


bp = Blueprint('recipe', __name__, url_prefix='/recipe')


@bp.route('/', methods=('GET', 'POST'))
def recipe():
    if request.method == 'GET':
        return get_recipes()

    if request.method == 'POST':
        # TODO
        msg, err = create_recipe(request)
        if not err:
            return jsonify({'code': 422, 'msg': 'Validation error'})
        return jsonify({'code': 201, 'msg': 'Recipe created'})
