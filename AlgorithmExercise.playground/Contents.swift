import UIKit
import Foundation

// Given interger arrays, create a functions that let's user know ( true/ false) whether in that araay has any pair number that the sum is equal the number given before

// For example:
// [1,2,3,4,4,5] sum = 6 ==> return true
// [1,4,5,6,5,6,7] sum = 19 ==> return false


//func hasPairWithSum(array: [Int], sum: Int) -> Bool {
//
//    for i in 0...array.count - 1 {
//        for j in i + 1...array.count - 1 {
//            if array[i] + array[j] == sum {
//                return true
//            }
//        }
//    }
//    return false
//}
// O(n^2)
var array: [Int] = [1,2,3,4,5]
array = array.sorted()
func hasPairWithSum(array: [Int], sum: Int) -> Bool {
    var low = 0
    var high = array.count - 1
    while low < high {
        let sumTemp = array[low] + array[high]
        if sumTemp == sum {
            return true
        } else if sumTemp < sum {
            low = low + 1
        } else {
            high = high - 1
        }
    }
    return false
}


print(hasPairWithSum(array: array, sum: 10))











































