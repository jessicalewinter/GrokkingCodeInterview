import Foundation

/// Big O(0): O(log(n)) worst case
/// Big Omega: Ω(1) best case

struct BinarySearch {
    func calculate(list: [Int], item: Int) -> Bool {
            // list must be sorted
        var down = 0
        var high = list.count - 1
        
        while down <= high {
            let middle = (down + high)/2
            let guess = list[middle]
            
            if guess == item {
                return true
            } else if guess > item {
                high = middle - 1
            } else if guess < item {
                down = middle + 1
            }
        }
        
        return false
    }
}
