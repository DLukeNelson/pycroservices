"""
routes for the person microservice
"""
from person.main import app

@app.route('/')
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
