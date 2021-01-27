import UIKit

// it is a tuple
let firstPerson = ("Emirhan", "Saygıver")
print(firstPerson.0, firstPerson.1)

func multiply(_ x: Int, _ y: Int) -> Int {
    return x * y
}
multiply(3,4)

func divide(_ x: Int, _ y: Int) -> (Int, Int) {
    let quotient = x / y
    let reminder = x % y
    return (quotient, reminder)
}
let result = divide(9, 2)
result.0
result.1

func topTwoLongestNames(names: [String]) -> (String?,String?) {
    let sortedList = names.sorted {(x, y) -> Bool in
        return x.count > y.count
    }
    
    if sortedList.count == 1 {
        return (sortedList[0], nil)
    } else if sortedList.count == 0 {
        return (nil, nil)
    }
    
    return (sortedList[0], sortedList[1])
}

//let returnValues = topTwoLongestNames(names: ["Emirhan", "Emir", "Balkın", "Atakan"])
//returnValues.0
//returnValues.1

let returnValues = topTwoLongestNames(names: ["Esay"])
returnValues.0

