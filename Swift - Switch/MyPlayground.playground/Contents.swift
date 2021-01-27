import Foundation

func determinePlayersLeague(ranking: Int) {
    switch ranking {
    case 0:
        print("you need to play more!")
    case 0..<25:
        print("you are bronze!")
    case 25..<50:
        print("you are silver!")
    case 50..<100:
        print("you are gold!")
    case 100..<300:
        print("you are platinum!")
    default:
        print("nil")
    }
}

determinePlayersLeague(ranking: 0)



enum Phones: Int {
    case iPhone  = 10
    case samsung = 0
    case nokia   = 5
}

func whichIsBest(phones: Phones) {
    switch phones {
    case .iPhone:
        print("i have been using this so many years")
    case .samsung:
        print("i do not have this one.")
    case .nokia:
        print("it is totally classic ")
    }
}

func howManyYearsIUse(phones: Phones) {
        print(phones.rawValue)
}

var howManyYearsEsayUsed = howManyYearsIUse(phones: .iPhone)

var esaySays = whichIsBest(phones: .iPhone)

