import Foundation

class TV {
    var model: String
    var releasedYear: Int
    var isItSmart: Bool
    
    init(model: String, releasedYear: Int, isItSmart: Bool) {
        self.model = model
        self.releasedYear = releasedYear
        self.isItSmart = isItSmart
    }
}

class MiniTV: TV {
    
    var isItPortable: Bool
    init(model: String, releasedYear: Int, isItSmart: Bool, isItPortable: Bool) {
        self.isItPortable = isItPortable
        super.init(model: model, releasedYear: releasedYear, isItSmart: isItSmart)
    }
}

var myTV = TV(model: "Philips", releasedYear: 2017, isItSmart: false)
var myExTV = myTV
myExTV.releasedYear = 2010
print(myTV.releasedYear)

var myNewKitchenTv = MiniTV(model: "Vestel", releasedYear: 2020, isItSmart: true, isItPortable: true)
var myOldKitchenTv = myNewKitchenTv
myOldKitchenTv.isItSmart = false
print(myNewKitchenTv.isItSmart)


struct TV2 {
    var model: String
    var releasedYear: Int
    }

let myFavoriteTV = TV2(model: "Vestel", releasedYear: 2020)
var tv2 = myFavoriteTV
tv2.model = "Philips"
print(myFavoriteTV.model)
print(tv2.model)

