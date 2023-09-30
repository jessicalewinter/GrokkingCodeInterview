import array

## Solution
### To verify if a item exists on the array
### To use the binary search the array must be sorted
### Time complexity: O(n)
### Space complexity: O(1)

def binary_search(array, item) -> bool:
    down = 0
    high = len(array)

    while down <= high: 
        middle = (down + high) // 2

        if item == array[middle]:
            return True

        if item > array[middle]:
            down = middle + 1
        
        if item < array[middle]:
            high = middle - 1
    
    return False

def main(input_array, input_item) -> str:
    if binary_search(input_array, input_item):
        return f"The item {input_item} is on array"
    else:
        return f"The item {input_item} is not on array"
    
        

if __name__ == '__main__':
    input_array = [15, 23, 38, 43, 48, 54, 98]

    print(main(input_array, 38))
    print("###############################")
    print(main(input_array, 3))


