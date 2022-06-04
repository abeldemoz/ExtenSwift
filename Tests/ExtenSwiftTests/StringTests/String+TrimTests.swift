import XCTest
@testable import ExtenSwift

final class StringTrimTests: XCTestCase {

    // MARK: - Test trim
    func test_trim_removesLeadingAndTrailingWhiteSpace() throws {
        var testString = " abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesLeadingWhiteSpace() throws {
        var testString = " abcd"
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesTrailingWhiteSpace() throws {
        var testString = "abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesAllWhiteSpace() throws {
        var testString = "     "
        XCTAssertEqual("", testString.trim())
    }

    func test_trim_removesLeadingAndTrailingNewLines() throws {
        var testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesLeadingNewLines() throws {
        var testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesTrailingNewLines() throws {
        var testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesAllNewLines() {
        var testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trim())
    }

    func test_trim_removesNothing_whenInputIsEmpty() {
        var testString = ""
        XCTAssertEqual("", testString.trim())
    }

    // MARK: - Test trimmed
    func test_trimmed_removesLeadingAndTrailingWhiteSpace() throws {
        let testString = " abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesLeadingWhiteSpace() throws {
        let testString = " abcd"
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesTrailingWhiteSpace() throws {
        let testString = "abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesAllWhiteSpace() throws {
        let testString = "     "
        XCTAssertEqual("", testString.trimmed)
    }

    func test_trimmed_removesLeadingAndTrailingNewLines() throws {
        let testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesLeadingNewLines() throws {
        let testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesTrailingNewLines() throws {
        let testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesAllNewLines() {
        let testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trimmed)
    }

    func test_trimmed_removesNothing_whenInputIsEmpty() {
        let testString = ""
        XCTAssertEqual("", testString.trimmed)
    }
}

