import unittest


class TestMain(unittest.TestCase):

    def test_init(self):
        self.assertTrue(1 == 1, "Setup failed")

    def test_assertEqualNumber(self):
        self.assertEqual(1, 1, "Not equal")


if __name__ == '__main__':
    unittest.main()
