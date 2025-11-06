import Foundation

func isArmstrongNumber(_ number: Int) -> Bool {
    var digits: [Int] = []
    var n = number
    var sum = 0
    
    while n > 0 {
        digits.insert(n % 10, at: 0)
        n /= 10
    }
    
    for digit in digits {
        sum += Int(pow(Double(digit), Double(digits.count)))
    }
    return sum == number
}