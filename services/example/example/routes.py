"""
routes for the example microservice
"""
from flask import Blueprint

bp = Blueprint('person', __name__, url_prefix='/example')

@bp.route('/')
def index_page():
    """
    renders the index_page
    """
    return example_string()

def example_string():
    """
    returns a string
    """
    return 'this is the example string'
