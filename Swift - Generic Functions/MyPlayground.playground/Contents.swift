import Foundation

var intArray: [Int] = [2,5,8,12,56,398]
let abcArray: [String] = ["a", "b", "c", "d", "e"]

func findLetterIndex(_ array: [String], _ letter: String) -> Int? {
    for (index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    return nil
}

findLetterIndex(abcArray, "c")


// this ex is generic func

func linearSearch<T:Comparable> (_ array: [T], key: T) -> Int? {
    for (index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    return nil
}
linearSearch(intArray, key: 8)
linearSearch(abcArray, key: "e")
