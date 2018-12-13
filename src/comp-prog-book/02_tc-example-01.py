# Understand the time complexity of a solution
#
# The time complexity of an algorithm is the estimate of how much time the
# algorithm will use for some input
#
# If `n` is the input size, the time complexity of an algorithm is denoted by
# O(...) where O is a function of n
#
# Time complexity is usually defined by the number of nested loops in the
# algorithm and the largest complexity of a single phase in a sequence of
# phases.
#
# Example 1: Given an array of n numbers, calculate the largest possible sum of
# a sequence of consecutive values in the array.
#

def sub_array_sum(a):
    best = 0
    n = len(a)

    for a in range(n):
        for b in a



