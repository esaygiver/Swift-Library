import Foundation

var numberArray: [Int] = [1, 2, 4, 1, 4, 2, 5, 1, 2, 2, 2, 3, 5, 2, 0, 1,]

func getMostCommonNumber (array: [Int]) -> [Int] {
    
    var topNumbers = [Int]()
    var numberDictionary = [Int:Int]()
    
    for number in array {
        if let count = numberDictionary[number] {
            numberDictionary[number] = count + 1
        } else {
            numberDictionary[number] = 1
        }
    }
    
    var highestValueOfArray = numberDictionary.values.max()!
    
    for (number, count) in numberDictionary {
        if numberDictionary[number] == highestValueOfArray {
            topNumbers.append(number)
        }
    }
    
    return topNumbers
}

getMostCommonNumber(array: numberArray)



func getOneNumberRemove(array: [Int]) -> [Int] {
    
    var tempArray = array
    var numberDictionary = [Int:Int]()
    
    for number in array {
        if let count = numberDictionary[number] {
            numberDictionary[number] = count + 1
        } else {
            numberDictionary[number] = 1
        }
    }
    print(numberDictionary)
    for (number, count) in numberDictionary {
        if count == 1 {
            let singleElementIndex = tempArray.firstIndex(of: number)
            tempArray.remove(at: singleElementIndex!)
        }
    }
    
    
    return tempArray
}

func orderElements(array: [Int]) -> [Int] {
    array.sor
}

getOneNumberRemove(array: numberArray)

