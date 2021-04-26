def insertion_sort(items: list):
    for i, item in enumerate(items[1:]):
        j = i
        while j > -1 and items[j] > item:
            items[j + 1] = items[j]
            j -= 1
        items[j + 1] = item

    return items


if __name__ == "__main__":
    print(insertion_sort([0, 1]))
    print(insertion_sort([1, 0]))
    print(insertion_sort([3, 6, 8, 1, 2, 5, 3, 9, 3, 5, 9, 2]))
    print(insertion_sort([3, 6, -45, 1, 2, 5, 3, -9, 3, 0, 9, 2]))
    print(insertion_sort(["hello", "apple", "cat", "zebra", "goat", ""]))
