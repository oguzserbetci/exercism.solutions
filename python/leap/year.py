def is_divisible(x, y):
    return x % y == 0


def is_leap_year(year):
    return (is_divisible(year, 400) or
            (not is_divisible(year, 100) and is_divisible(year, 4)))