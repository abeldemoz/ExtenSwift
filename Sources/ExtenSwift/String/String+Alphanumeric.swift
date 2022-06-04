import Foundation

public extension String {
    var isAlphanumeric: Bool {
        !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }

    var containsOnlyDigits: Bool {
        let notDigits = NSCharacterSet.decimalDigits.inverted
        return !isEmpty && rangeOfCharacter(from: notDigits, options: String.CompareOptions.literal, range: nil) == nil
    }
}
