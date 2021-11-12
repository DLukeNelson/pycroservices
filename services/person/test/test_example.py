"""
Most basic starter tests
"""
from person import routes

def test_hello_world():
    """
    This makes sure that we can import code from the main service
    """
    assert routes.hello_world() == 'hello world!'
