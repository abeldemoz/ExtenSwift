import Foundation

public extension String {
    var trimmed: String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() -> Self {
        self = self.trimmed
        return self
    }
}
