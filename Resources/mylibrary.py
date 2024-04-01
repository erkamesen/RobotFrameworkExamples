import random
from robot.api.deco import keyword


@keyword("Greetings")
def greetings(name):
    return f"Hello {name}! How are you?"


@keyword("Add Two Number")
def add(num1, num2):
    return int(num1) + int(num2)


@keyword("Get Random Number")
def get_random_number(_min, _max):
    return random.randint(int(_min), int(_max))
