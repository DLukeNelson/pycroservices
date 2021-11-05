"""
Most basic starter tests
"""
from example import routes

def test_example_string():
    """
    This makes sure that we can import code from the main service
    """
    assert 'example string' in routes.example_string()
