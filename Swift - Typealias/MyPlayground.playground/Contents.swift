import Foundation


typealias name = String
typealias gender = String
typealias age = Int
typealias bff = Friends

func friends(name: name, gender: gender, age: age) {
    print("Esay's one of friend name is \(name) and \(name) is \(gender) and also \(age) years old")
}
let firstFriend = friends(name: "Ebuş", gender: "male", age: 25)


struct Friends {
    var name: name
    var gender: gender
    var age: age
    func friends() {
        print("Esay's one of friend name is \(name) and \(name) is \(gender) and also \(age) years old")
    }
}
var secondFriend = Friends(name: "hava", gender: "female", age: 25)
secondFriend.friends()

var structAlias = bff(name: "Betül", gender: "female", age: 26)
structAlias.friends()
