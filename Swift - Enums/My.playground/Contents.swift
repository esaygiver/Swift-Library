import Foundation

enum ChampionshipNumbers: Int {
    case bjk = 16
    case gs  = 23
    case fb  = 19
}

func thisYear(on championship: ChampionshipNumbers) {
    switch championship {
    case .bjk:
        print("this year we gonna be champion!")
    case .gs:
        print("Are u sure but that besiktas?")
    case .fb:
        print("i am a loser")
    }
}

func getEsayOpinion(on championship: ChampionshipNumbers) {
    print(championship.rawValue)
}

let esaySays = getEsayOpinion(on: .bjk)


let turkeyLeagueChampion = thisYear(on: .bjk)
    
enum NumberOfSupporters {
    case bjk(supporters: Int)
    case gs(supporters: Int)
    case fb(supporters: Int)
}

func whoHasMostSupporters(on numberOfSupporters: NumberOfSupporters) {
    switch numberOfSupporters {
    case .bjk(let supporters) where supporters > 150000:
        print("We are Best!")
    case .gs(supporters: let supporters) where supporters > 100000:
        print("we gonna catch you up eagle")
    case .fb(supporters: let supporters) where supporters > 10000:
        print("i am loser anyways")
    case .bjk, .gs, .fb :
        print("we dont have that much supporters")
    }
}

var x = whoHasMostSupporters(on: .bjk(supporters: 40000))
var y = whoHasMostSupporters(on: .fb(supporters: 30000))
