import Foundation

func greaterThanFive(number: Int?) -> Bool {
    
    // tenary operator
    let result = number! > 5 ? true : false
    return result
    
//    if number > 5 {
//        return true
//    } else {
//        return false
//    }
    
}
greaterThanFive(number: 7)
