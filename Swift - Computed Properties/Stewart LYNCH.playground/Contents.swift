import Foundation

struct Employee {
    var name: String
    var annualSalary: Double
    var weeksPerYear: Int
    var hrsPerDay: Double

    
    var monthlySalary: Double {
        annualSalary / Double(12)
    }
    var weeklySalary: Double {
        get {
            monthlySalary / Double(4)
        }
    }
    
    var hourlyWage : Double {
        get {
            weeklySalary / (hrsPerDay * 5)
        }
        set {
            annualSalary = newValue * hrsPerDay * 5 * Double(weeksPerYear)
        }
    }
}

var emp1 = Employee(name: "Esay", annualSalary: 60000, weeksPerYear: 48, hrsPerDay: 8)
emp1.weeklySalary
emp1.hourlyWage
emp1.monthlySalary
emp1.hourlyWage = 50
emp1.weeklySalary
emp1.annualSalary
