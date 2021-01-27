import Foundation

class Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func introduceYourself() {
        print("Hi, my name is \(name) and i am a(n) \(jobTitle).")
    }
}

var Esay = Developer(name: "Emirhan SAYGIVER", jobTitle: "Civil Eng", yearsExp: 1)
Esay.introduceYourself()


class iOSDeveloper: Developer {
    
    func speakFavoriteFramework(_ favFramework: String? ) {
        print(favFramework ?? "i do not have one")
    }
}

var Ebuş = iOSDeveloper(name: "Emir BOSTANCI", jobTitle: "iOS Dev", yearsExp: 3)
Ebuş.speakFavoriteFramework("ARKit")

