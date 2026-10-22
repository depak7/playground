from hello import greet


def test_greet():
    assert greet("World") == "Hello, World!"
    assert greet("Alice") == "Hello, Alice!"
    assert greet("") == "Hello, !"
    assert greet("  Bob  ") == "Hello, Bob!"
    assert greet("\tCarol\n") == "Hello, Carol!"
