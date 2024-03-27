def find_peak(list_of_integers):
    """
    Find a peak in a list of unsorted integers.
    Args:
        list_of_integers (list): The list of unsorted integers.

    Returns:
        int: A peak element from the list.
    """

    # Binary search-based algorithm to find a peak

    # Length of the input list
    n = len(list_of_integers)

    # Binary search bounds
    left = 0
    right = n - 1

    while left < right:
        mid = (left + right) // 2
        if list_of_integers[mid] < list_of_integers[mid + 1]:
            left = mid + 1
        else:
            right = mid

    # At the end of the loop, 'left' and 'right' will be pointing to the same element
    # which is a peak element
    return list_of_integers[left]
