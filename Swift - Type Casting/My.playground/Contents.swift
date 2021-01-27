import UI

class Animal {
    var species: String
    init(species: String) {
        self.species = species
    }
    func gettingBreathe() -> String {
        return "All animals can breathe"
    }
}

class Man: Animal {
    
    var speaking: Bool
    var hobbies: String
    
    init(species: String, hobbies: String, speaking: Bool) {
        self.hobbies = hobbies
        self.speaking = speaking
        super.init(species: species)
    }
    override func gettingBreathe() -> String {
        return "\(species) can breathe and it is a human"
    }
    func enjoyingStuffs() {
        if speaking == true {
            print("this \(species) is adult so he can talk, and always having fun when doing \(hobbies).")
        } else {
            print("\(species) might be a baby because he can not talk:(")
        }
    }
}


var esay = Man(species: "Human", hobbies: "Basketball", speaking: true)
var shark = Animal(species: "Fish")

var allParticipants: [Animal] = [esay, shark]

for c in allParticipants {
    if let man = c as? Man {
        print(man.hobbies)
    } else if let shark = c as? Animal {
        print(shark.species)
    }
}
esay.enjoyingStuffs()


struct Spaceship {
    var name: String {
        willSet {
            print("I'm called \(newValue)!")
        }
    }
}

var serenity = Spaceship(name: "Serenity")
serenity.name = "TARDIS"

var i = 2

repeat {
    i *= i * 2
} while i < 100

print(i)
