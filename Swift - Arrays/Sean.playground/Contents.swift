import Foundation

var colorArray: [String] = ["red", "green", "green", "black", "blue", "yellow", "red", "red", "red", "red", "red", "red", "red", "purple"]

func getMostCommonColor(array: [String]) -> [String] {
    
    var topColors: [String] = []
    var colorDictionary: [String:Int] = [:]
    
    for color in array {
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    
    for (color, count) in colorDictionary {
        if colorDictionary[color] == highestValue {
            topColors.append(color)
        }
    }
    
    return topColors
}

getMostCommonColor(array: colorArray)

