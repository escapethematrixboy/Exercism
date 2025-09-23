func getName(_ item: (name: String, amount: Int)) -> String {
    return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
    return (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) -> [(name: String, amount: Int)] {
    var updatedItems = items
    for i in 0..<updatedItems.count {
        if updatedItems[i].name == toy {
            updatedItems[i].amount = amount
        }
    }
    return updatedItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
    var newItems: [(name: String, amount: Int, category: String)] = []
    
    for (name, amount) in items {
        newItems.append((name: name, amount: amount, category: category))
    }
    return newItems
}