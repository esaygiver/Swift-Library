import Foundation

var array1 = [1,3,6,8,10,43,52,67]
var array2 = [1,3,6,8,10,43,52,67]
var array3 = [1,3,6,8,10,43,52,672]

array1 = array1.filter({ return $0 % 2 == 0 })
print(array1)

array2 = array2.map({ return $0 * 2 })
print(array2)

let result = array3.reduce(0, { $0 + $1 })
print(result)



let priceList: [Double] = [3.2, 40.5, 18.1, 17.2]
var priceListStringFormat = [String]()

// with for loop
for price in priceList {
    priceListStringFormat.append("\((price)*2) TL")
}
print(priceListStringFormat)

// with map
priceListStringFormat = priceList.map({"\($0 * Double(2)) TL" })
print(priceListStringFormat)
