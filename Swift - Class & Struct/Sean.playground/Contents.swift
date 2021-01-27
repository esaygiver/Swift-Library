import Foundation

class Macbook {
    var year: Int
    var color: String
    
    init(year: Int, color: String) {
        self.year = year
        self.color = color
    }
}

let myMacbook = Macbook(year: 2005, color: "Black")
var stolenMacbook = myMacbook
stolenMacbook.color = "White"
print(myMacbook.color)
// because its reference type

struct Iphone {
    var version: Int
    var color: String
}
let myIphone = Iphone(version: 7, color: "black")
var myStolenIphone = myIphone
myStolenIphone.color = "gold"
print(myIphone.color)
// as its a copy
