import Foundation

func getData(url: String, completion: ((String) -> Void)) {
    print("this is closure with \(url)")
}
getData(url: "www.esay.com") { (String) in
    print(String)
}



func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetOfNumbers = [Int]()
    for x in numbers {
        if x >= value {
            filteredSetOfNumbers.append(x)
        }
    }
    return filteredSetOfNumbers
}

filterGreaterThanValue(value: 7, numbers: [1, 2, 5, 7, 9])



func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filterNumbers = [Int]()
    for y in numbers {
        if closure(y) {
            filterNumbers.append(y)
        }
    }
    return filterNumbers
}

let filteredNumbers = filterWithPredicateClosure(closure: { (y) -> Bool in
    return y < 2
}, numbers: [1,2,5,6,8])
print(filteredNumbers)


// you can use another func in your closure

func greaterThanThree(value: Int) -> Bool {
    return value > 3
}

func divisibleByFive(value: Int) -> Bool {
    return value % 5 == 0
}

var deneme2 = filterWithPredicateClosure(closure: greaterThanThree, numbers: [1,2,4,6,7])
var deneme3 = filterWithPredicateClosure(closure: divisibleByFive, numbers: [5,15,22,45,67])
