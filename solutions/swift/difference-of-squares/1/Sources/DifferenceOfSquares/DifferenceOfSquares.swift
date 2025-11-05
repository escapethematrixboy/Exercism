class Squares {
    let firstN: Int
    
    init(_ firstN: Int) {
        self.firstN = firstN
    }
    
    var squareOfSum: Int {
        var sum = 0
        for number in 1...firstN {
            sum += number
        }
        return sum * sum
    }
    
    var sumOfSquares: Int {
        var sum = 0
        for number in 1...firstN {
            sum += number * number
        }
        return sum
    }
    
    var differenceOfSquares: Int {
        squareOfSum - sumOfSquares
    }
}