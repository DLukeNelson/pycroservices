"""
routes for the person microservice
"""
from flask import Blueprint

bp = Blueprint('person', __name__, url_prefix='/person')

@bp.route('/')
def index_page():
    """
    renders the index_page
    """
    return hello_world()

def hello_world():
    """
    returns a string
    """
    return 'hello world'
