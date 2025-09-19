func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    if stack.count > index && index >= 0 {
        var stack = stack
        stack.remove(at: index)
        stack.insert(newCard, at: index)
        return stack
    } else {
        return stack
    }
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var stack = stack
    stack.append(newCard)
    return stack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    if stack.count > index && index >= 0 {
        var stack = stack
        stack.remove(at: index)
        return stack
    } else {
        return stack
    }
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    if stack.count >= index && index >= 0 {
        var stack = stack
        stack.insert(newCard, at: index)
        return stack
    } else {
        return stack
    }
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    if stack.count == size {
        return true
    } else {
        return false
    }
}
