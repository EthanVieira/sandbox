def add_two_n_bit_binary_ints(x: list, y: list) -> list:
    result = [0] + x
    for i, bit in enumerate(y):
        if result[i + 1] == 1 and bit == 1:
            while i > -1 and result[i + 1] == 1:
                result[i + 1] = 0
                i -= 1
            result[i + 1] = 1
        else:
            result[i + 1] += bit

    return result


if __name__ == "__main__":
    print(add_two_n_bit_binary_ints([1, 0, 1, 0], [0, 1, 0, 1]))
    print(add_two_n_bit_binary_ints([1, 1, 0, 0], [1, 1, 0, 0]))
    print(add_two_n_bit_binary_ints([1, 1, 1, 1], [1, 1, 1, 1]))
    print(add_two_n_bit_binary_ints([1, 0, 1, 1], [1, 1, 1, 0]))
