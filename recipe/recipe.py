from flask import Blueprint


bp = Blueprint('recipe', __name__, url_prefix='/recipe')


@bp.route('/')
def recipe():
    return '<h1>RECIPES</h1>'
