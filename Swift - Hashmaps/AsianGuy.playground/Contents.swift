import Foundation

struct Employee {
    var name: String
    var annualSalary: Double
    var weeksPerYear: Int
    var hrsPerDay: Double
    
    var weeklySalary: Double {
        annualSalary / Double(weeksPerYear)
    }
    
    var hourlyWage : Double {
        get {
            weeklySalary / (hrsPerDay * 5)
        }
    }
}

var emp1 = Employee(name: "Esay", annualSalary: 45000, weeksPerYear: 48, hrsPerDay: 8)
emp1.hourlyWage
