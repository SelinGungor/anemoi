from anemoi import create_app


def test_config():
    assert not create_app().testing
    assert create_app({'TESTING': True}).testing

#
# def test_create_blog(client):
#     response = client.get('/create')
#     assert "<input type=\"submit\" value=\"Save\">" in response.data
