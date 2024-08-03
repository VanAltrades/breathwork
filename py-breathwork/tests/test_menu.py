import unittest
from breathwork.menu import Menu
from breathwork.exercise import Exercise

class TestMenu(unittest.TestCase):
    def test_display(self):
        exercises = [Exercise("Test Exercise", [])]
        menu = Menu(exercises)
        self.assertIsNotNone(menu.display)

if __name__ == "__main__":
    unittest.main()