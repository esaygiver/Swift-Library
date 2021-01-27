import UIKit

//email and password are textfield outlets
// || it means or

enum LoginError: Error {
    case incompleteForm
    case invalidEmail
    case incorrectPasswordLength
}

func Login() throws {
    
    if email.isEmpty || password.isEmpty {
        throw LoginError.incompleteForm
    }
    
    if !email.isValidEmail {
        throw LoginError.invalidEmail
    }
    
    if password.characters.count < 0 {
        throw LoginError.incorrectPasswordLength
    }
}

func buttonTapped() {
    
    do {
        try Login()
    } catch LoginError.incompleteForm {
        
    }
    
}
