//
//  File.swift
//  UnitTestTests
//
//  Created by Cihan Yilmaz on 16/08/2025.
//


import XCTest
@testable import UnitTest

final class UnitTestSamples: XCTestCase {
 
    func testAddition() {
        let result = MathUtility.add(2,3)
        XCTAssertEqual(result, 5, "Expected 2 + 3 to equal 5")
    }
    
    func testValidEmail() {
        let result = Validator.isValidEmail("test@example.com")
        XCTAssert(result, "Expected valid email to return true")
    }
    
    func testInvalidEmailWithoutSymbol() {
        let result = Validator.isValidEmail("aa")
        XCTAssertFalse(result, "Expected invalid email to return false")
    }
    
    func testSquareOfNumber() {
        let result = MathUtility.square(4)
        XCTAssertEqual(result, 16, "Expected result is 16")
    }
    
    func testFullNameFormatter() {
        let fullName = UserFormatter.fullName(first: "John", last: "Doe")
        XCTAssertEqual(fullName, "John Doe", "Expected full name is to be 'John Doe'")
    }
    
    func testEvenNumbersFilter() {
        let input = [1,2,3,4,5,6]
        let result = NumberFilter.evenNumbers(from: input)
        XCTAssertEqual(result, [2,4,6], "Expected to filter out even numbers only")
    }
    
    func testMockUserData() {
        let user = UserService.getMockUser()
        let expected = User(id: 1, name: "Alice", email: "alice@example.com")
        XCTAssertEqual(user, expected, "Expected mock user to match predefined data")
    }
    
    func testFindUserReturnsCorrectUser() {
        let user = UserService.findUser(name: "Bob")
        let expected = User(id: 2, name: "Bob", email: "bob@example.com")
        XCTAssertEqual(user, expected, "Expected to find user Bob")
    }

    func testFindUserReturnsNilForUnknownName() {
        let user = UserService.findUser(name: "Charlie")
        XCTAssertNil(user, "Expected no user found for 'Charlie'")
    }
    
    func testIsNumberEven() {
        let result = Validator.isEven(4)
        XCTAssertTrue(result, "Expected number to return true")
    }
    
    func testIsAdult() {
        let result = Validator.isAdult(18)
        XCTAssertTrue(result, "Expected age to return true")
    }
    
    func testIsPalindrome() {
        let result = Validator.isPalindrome("level")
        XCTAssertTrue(result, "Expected 'level' to be a palindrome")
    }

    
}
