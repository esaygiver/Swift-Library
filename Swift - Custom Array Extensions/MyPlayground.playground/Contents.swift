import Foundation

func sum(numbers: [Int]) -> Int {
    return numbers.reduce(0) { $0 + $1 }
    
//    var result = 0
//    numbers.forEach { (x) in
//        result += x
//    }
//    return result
}

sum(numbers: [1,4,6,3])

extension Array where Element: Numeric {
    func customSum() -> Element {
        return self.reduce(0) { $0 + $1 }
    }
}

[1.2, 2.3].customSum()

let floats: [CGFloat] = [1.2, 2.5, 5.1]
floats.customSum()



extension Array where Element == String {
    func concatenate() -> String {
        return self.reduce("", {$0 + $1 + " "})
    }
}

let x: [String] = ["hello", "this is", "Esay"]
x.concatenate()
