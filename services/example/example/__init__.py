"""
Initializes the flask app
"""
from flask import Flask

def create_app():
    """
    create and return the flask application
    """
    app = Flask(__name__)

    # pylint: disable=import-outside-toplevel
    from . import routes
    app.register_blueprint(routes.bp)

    return app
