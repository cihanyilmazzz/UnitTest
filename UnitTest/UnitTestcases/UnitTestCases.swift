//
//  MathUtility.swift
//  UnitTest
//
//  Created by Cihan Yilmaz on 16/08/2025.
//

import Foundation

struct User: Equatable {
    let id: Int
    let name: String
    let email: String
}

struct UserService {
    static func getMockUser() -> User {
        return User(id: 1, name: "Alice", email: "alice@example.com")
    }
    
    static func findUser(name: String) -> User? {
        let mockUsers = [
            User(id: 1, name: "Alice", email: "alice@example.com"),
            User(id: 2, name: "Bob", email: "bob@example.com")
        ]
        return mockUsers.first { $0.name == name }
    }

}

struct MathUtility {
    static func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    static func square(_ x: Int) -> Int {
        return x * x
    }
}

struct Validator {
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegex = #"^\S+@\S+\.\S+$"#
        return email.range(of: emailRegex, options: .regularExpression) != nil
    }
}

struct UserFormatter {
    static func fullName(first: String, last: String) -> String {
        return "\(first) \(last)"
    }
}

struct NumberFilter {
    static func evenNumbers(from numbers: [Int]) -> [Int] {
        return numbers.filter { $0 % 2 == 0 }
    }
}




