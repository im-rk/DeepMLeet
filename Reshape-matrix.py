
def reshape_matrix(a: list[list[int | float]], new_shape: tuple[int, int]) -> list[list[int | float]]:
    m = len(a)
    n = len(a[0]) if a else 0

    if new_shape[0] * new_shape[1] != m * n:
        return []

    flat = [elem for row in a for elem in row]
    reshaped_matrix = [flat[i * new_shape[1]:(i + 1) * new_shape[1]] for i in range(new_shape[0])]

    return reshaped_matrix
