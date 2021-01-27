import Foundation

func topStrikerAndHisGoalNumbers (_ goalRanking: [String:Int]) -> (String?,Int?) {
    
    let sortedList = goalRanking.sorted { (x, y) -> Bool in
        return x.value > y.value
    }
    if sortedList.isEmpty {
        return (nil, nil)
    }
    
    return (sortedList[0].key, sortedList[0].value)
}
let TurkeyLeague = topStrikerAndHisGoalNumbers(["Burak YILMAZ": 25, "Alex De Souza": 22, "Mario GOMEZ": 35, "Sergen YALÇIN": 45])

if let name = TurkeyLeague.0 {
    print(name)
}
if let goals = TurkeyLeague.1 {
    print(goals)
}



