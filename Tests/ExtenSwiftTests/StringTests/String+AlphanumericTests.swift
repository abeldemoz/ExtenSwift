import XCTest
@testable import ExtenSwift

final class StringAlphanumeric: XCTestCase {

    private var testString: String!

    // MARK: - Test isAlphanumeric
    func test_isAlphanumeric_returnsTrue_whenInputContainsOnlyLetters() throws {
        testString = "abc"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsTrue_whenInputContainsOnlyNumbers() throws {
        testString = "123"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsTrue_whenInputContainsLettersAndNumbers() throws {
        testString = "abc123"
        XCTAssertEqual(testString.isAlphanumeric, true)
    }

    func test_isAlphanumeric_returnsFalse_whenInputContainsSpecialCharacters() throws {
        testString = "abc123+$%^"
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    func test_isAlphanumeric_returnsFalse_whenInputIsEmpty() throws {
        testString = ""
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    func test_isAlphanumeric_returnsFalse_whenInputContainsOnlySpecialCharacters() throws {
        testString = "+$%^"
        XCTAssertEqual(testString.isAlphanumeric, false)
    }

    // MARK: - Test containsOnlyDigits
    func test_containsOnlyDigits_returnsTrue_whenInputContainsOnlyDigits() throws {
        testString = "123"
        XCTAssertEqual(testString.containsOnlyDigits, true)
    }

    func test_containsOnlyDigits_returnsFalse_whenInputContainsOnlyLetters() throws {
        testString = "abc"
        XCTAssertEqual(testString.containsOnlyDigits, false)
    }

    func test_containsOnlyDigits_returnsFalse_whenInputIsEmpty() throws {
        testString = ""
        XCTAssertEqual(testString.containsOnlyDigits, false)
    }


}
