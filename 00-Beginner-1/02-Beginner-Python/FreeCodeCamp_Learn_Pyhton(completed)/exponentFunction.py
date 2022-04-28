
def raise_to_power(base_num, pow_num):
    result = 1
    while pow_num > 0:
        result = result * base_num
        pow_num -= 1
    return result

print(raise_to_power(3, 2))
