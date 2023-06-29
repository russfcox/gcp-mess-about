"""
Tests flask app
"""
import pytest # pylint: disable=W0611
from hello import app # pylint: disable=E0401

def test_index_route():
    """test index route"""
    response = app.test_client().get('/')
    assert response.status_code == 200
    assert response.data.decode('utf-8') == 'Hello World!'
