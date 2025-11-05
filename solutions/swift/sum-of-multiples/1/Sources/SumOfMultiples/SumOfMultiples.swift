func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    var emptyArray: [Int] = []
    var sum: Int = 0
    
    for number in inMultiples {
        if number == 0 {
            continue
        } else {
            for multiple in 1..<limit {
                if multiple % number == 0 {
                    emptyArray.append(multiple)
                }
            }
        }
    }
    
    let unique = Array(Set(emptyArray))
    
    for number in unique {
        sum += number
    }
    
    return sum
}