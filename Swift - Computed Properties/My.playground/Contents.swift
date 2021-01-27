import Foundation

struct Temperature {
    var celcius: Int = 0
    var fahrenheit: Int {
        get {
            return (Int(Double(celcius) * 1.8) + 32)
        }
        set {
            celcius = Int(Double(newValue - 32) / 1.8)
        }
    }
}

var temp = Temperature()
temp.celcius = 10
print(temp.fahrenheit)

var temp2 = Temperature()
temp2.fahrenheit = 68
print(temp2.celcius)
