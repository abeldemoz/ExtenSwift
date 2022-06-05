import XCTest
@testable import ExtenSwift

final class StringTrimTests: XCTestCase {

    private var testString: String!

    // MARK: - Test trim
    func test_trim_removesLeadingAndTrailingWhiteSpace() throws {
        testString = " abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesLeadingWhiteSpace() throws {
        testString = " abcd"
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesTrailingWhiteSpace() throws {
        testString = "abcd "
        XCTAssertEqual("abcd", testString.trim())
    }

    func test_trim_removesAllWhiteSpace() throws {
        testString = "     "
        XCTAssertEqual("", testString.trim())
    }

    func test_trim_removesLeadingAndTrailingNewLines() throws {
        testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesLeadingNewLines() throws {
        testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesTrailingNewLines() throws {
        testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trim())
    }

    func test_trim_removesAllNewLines() {
        testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trim())
    }

    func test_trim_removesNothing_whenInputIsEmpty() {
        testString = ""
        XCTAssertEqual("", testString.trim())
    }

    // MARK: - Test trimmed
    func test_trimmed_removesLeadingAndTrailingWhiteSpace() throws {
        testString = " abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesLeadingWhiteSpace() throws {
        testString = " abcd"
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesTrailingWhiteSpace() throws {
        testString = "abcd "
        XCTAssertEqual("abcd", testString.trimmed)
    }

    func test_trimmed_removesAllWhiteSpace() throws {
        testString = "     "
        XCTAssertEqual("", testString.trimmed)
    }

    func test_trimmed_removesLeadingAndTrailingNewLines() throws {
        testString = "\nabcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesLeadingNewLines() throws {
        let testString = "\nabcdefg"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesTrailingNewLines() throws {
        testString = "abcdefg\n"
        XCTAssertEqual("abcdefg", testString.trimmed)
    }

    func test_trimmed_removesAllNewLines() {
        testString = "\n\n\n\n"
        XCTAssertEqual("", testString.trimmed)
    }

    func test_trimmed_removesNothing_whenInputIsEmpty() {
        testString = ""
        XCTAssertEqual("", testString.trimmed)
    }
}

