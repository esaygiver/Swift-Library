import Foundation

var person: [String: Int] = ["Esay": 24,
                             "Ebuş": 25,
                             "Balkın": 26
                            ]

let ageSortedList = person.sorted { (x, y) -> Bool in
    return x.value > y.value
}

print("the oldest person in this trio is, \(ageSortedList[0].key) and he is \(ageSortedList[0].value) years old. However \(ageSortedList[2].key) is the BEST.")
