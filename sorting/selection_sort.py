def selection_sort(items: list, comparison=lambda a, b: a < b):
    for i in range(len(items[:-1])):
        index = i
        candidate = items[i]
        for j, item2 in enumerate(items[i:]):
            if comparison(item2, candidate):
                candidate = item2
                index = j + i

        items[i], items[index] = items[index], items[i]
    return items


if __name__ == "__main__":
    print(selection_sort([]))
    print(selection_sort([1]))
    print(selection_sort([0, 100000000, 20000]))
    print(selection_sort([1, 0]))
    print(selection_sort([3, 6, 8, 1, 2, 5, 3, 9, 3, 5, 9, 2]))
    print(selection_sort([3, 6, -45, 1, 2, 5, 3, -9, 3, 0, 9, 2]))
    print(selection_sort([3, 6, -45, 1, 2, 5, 3, -9,
                          3, 0, 9, 2], comparison=lambda a, b: a > b))
    print(selection_sort(["hello", "apple", "cat", "zebra", "goat", ""]))
