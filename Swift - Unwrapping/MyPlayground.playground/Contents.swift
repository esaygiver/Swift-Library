import Foundation

var optionalNumber: Int?
optionalNumber = 10

// IF LET
if let number = optionalNumber {
    print("i have a value, it is \(number)")
} else {
    print("i dont have a value, i am nil")
}


// GUARD
func tripleNumber(number: Int?) {
    guard let number = number else {
        print("Exiting Function")
        return
    }
    print("My tripled number is, \(number * 3)")
}
var tripled = tripleNumber(number: optionalNumber)


// FORCE UNWRAPPİNG -> Think twice

//  !


// OPTIONAL CHAINING
struct Device {
    var type: String
    var price: Float
    var color: String
}

var myDevice: Device?
myDevice = Device(type: "iPhone", price: 50, color: "black")
let devicePrice = myDevice?.price

if let devicePrice = devicePrice {
    print("My total price, \(myDevice!.price + myDevice!.price / 10)")
}

//
//func totalPrice(devicePrice: Float?) {
//    guard let devicePrice = devicePrice else {
//    print("error error error")
//    return
//    }
//    print("My total price, \(myDevice!.price + myDevice!.price / 10)")
//}






