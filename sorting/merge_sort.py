def merge_sort(items: list, comparison=lambda a, b: a < b):
    if len(items) < 2:
        return items

    mid_i = len(items)//2
    left = merge_sort(items[:mid_i], comparison)
    right = merge_sort(items[mid_i:], comparison)

    i = j = 0

    for k in range(len(items)):
        if i == len(left):
            next_item = right[j]
            j += 1
        elif j == len(right):
            next_item = left[i]
            i += 1
        elif comparison(left[i], right[j]):
            next_item = left[i]
            i += 1
        else:
            next_item = right[j]
            j += 1
        items[k] = next_item

    return items


if __name__ == "__main__":
    print(merge_sort([]))
    print(merge_sort([1]))
    print(merge_sort([0, 100000000, 20000]))
    print(merge_sort([1, 0]))
    print(merge_sort([1.5, -2.6, 2, 1.1]))
    print(merge_sort([3, 6, 8, 1, 2, 5, 3, 9, 3, 5, 9, 2]))
    print(merge_sort([3, 6, -45, 1, 2, 5, 3, -9, 3, 0, 9, 2]))
    print(merge_sort([3, 6, -45, 1, 2, 5, 3, -9,
                      3, 0, 9, 2], comparison=lambda a, b: a > b))
    print(merge_sort(["hello", "apple", "cat", "zebra", "goat", ""]))
