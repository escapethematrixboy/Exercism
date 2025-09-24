import Foundation

class Bob {
  static func response(_ message: String) -> String {
      let letters = CharacterSet.letters
      let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)
      
      if trimmed.isEmpty {
          return "Fine. Be that way!"
      } else if trimmed.rangeOfCharacter(from: letters) != nil && trimmed == trimmed.uppercased() && trimmed.last == "?" {
          return "Calm down, I know what I'm doing!"
      } else if trimmed.last == "?" {
          return "Sure."
      } else if trimmed.rangeOfCharacter(from: letters) != nil && trimmed == trimmed.uppercased() {
          return "Whoa, chill out!"
      } else {
          return "Whatever."
      }
  }
}
