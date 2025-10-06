func newScoreBoard() -> [String: Int] {
    let newHighScore: [String: Int] = [:]
    return newHighScore
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name, default: 0] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    if scores[name] != nil {
        scores[name] = 0
    }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    if let current = scores[name] {
        scores[name] = current + delta
    }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    func sortByName(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
            return lhs.0 < rhs.0
        }
        return scores.sorted(by: sortByName)
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    func sortByScore(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
        return lhs.1 > rhs.1
    }
    return scores.sorted(by: sortByScore)
}