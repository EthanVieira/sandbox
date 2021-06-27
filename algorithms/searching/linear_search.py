def linear_search(items: list, value):
    for i, item in enumerate(items):
        if item == value:
            return i

    return None


if __name__ == "__main__":
    print(linear_search([0, 1], -1))
    print(linear_search([1, 0], 1))
    print(linear_search([3, 6, 8, 1, 2, 5, 3, 9, 3, 5, 9, 2], 4))
    print(linear_search([3, 6, -45, 1, 2, 5, 3, -9, 3, 0, 9, 2], -9))
    print(linear_search(
        ["hello", "apple", "cat", "zebra", "goat", ""], "zebra"))
    print(linear_search(
        ["hello", "apple", "cat", "zebra", "goat", ""], "tiger"))
