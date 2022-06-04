import XCTest
@testable import ExtenSwift

final class StringAlphanumeric: XCTestCase {

    // MARK: - Test isAlphanumeric
    func test_isAlphanumeric_returnsTrue_whenInputContainsOnlyLetters() throws {
        let someString = "abc"
        XCTAssertEqual(someString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsTrue_whenInputContainsOnlyNumbers() throws {
        let someString = "123"
        XCTAssertEqual(someString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsTrue_whenInputContainsLettersAndNumbers() throws {
        let someString = "abc123"
        XCTAssertEqual(someString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsFalse_whenInputContainsSpecialCharacters() throws {
        let someString = "abc123+$%^"
        XCTAssertEqual(someString.isAlphanumeric, false)
    }

    func test_isAlphanumeric_returnsFalse_whenInputIsEmpty() throws {
        let someString = ""
        XCTAssertEqual(someString.isAlphanumeric, false)
    }

    func test_isAlphanumeric_returnsFalse_whenInputContainsOnlySpecialCharacters() throws {
        let someString = "+$%^"
        XCTAssertEqual(someString.isAlphanumeric, false)
    }

    // MARK: - Test containsOnlyDigits
    func test_containsOnlyDigits_returnsTrue_whenInputContainsOnlyDigits() throws {
        let someString = "123"
        XCTAssertEqual(someString.containsOnlyDigits, true)
    }

    func test_containsOnlyDigits_returnsFalse_whenInputContainsOnlyLetters() throws {
        let someString = "abc"
        XCTAssertEqual(someString.containsOnlyDigits, false)
    }

    func test_containsOnlyDigits_returnsFalse_whenInputIsEmpty() throws {
        let someString = ""
        XCTAssertEqual(someString.containsOnlyDigits, false)
    }


}
