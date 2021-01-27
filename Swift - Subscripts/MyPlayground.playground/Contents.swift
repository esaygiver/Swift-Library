import Foundation

struct Names {
    var array: [[Any]] = [
            ["ESay", 2, 99],
            ["Ebuş", 3, 100],
            ["Balkın", 4, 101]
    ]
    
    func firstFunction(_ row: Int, _ col: Int) -> Any {
        return array[row][col]
    }
    
    subscript(row: Int, col: Int) -> Any {
        return array[row][col]
    }
}
var x = Names()
x.array[1][0]

// with subscript
x[1, 0]

// with method
x.firstFunction(1, 0)


