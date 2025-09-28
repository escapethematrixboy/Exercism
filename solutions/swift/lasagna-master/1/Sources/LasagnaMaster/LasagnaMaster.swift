func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var noodleCount = 0
    var sauceCount = 0
    
    for layer in layers {
        if layer == "noodles" {
            noodleCount += 1
        } else if layer == "sauce" {
            sauceCount += 1
        }
    }
    return (noodles: noodleCount * 3, sauce: Double(sauceCount) * 0.2)
}

func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    amount.sauce *= 33.814
    print(amount)
}

func redWine(layers: String...) -> Bool {
    
    func mozzarella() -> Int {
        var count = 0
        
        for layer in layers {
            if layer == "mozzarella" {
                count += 1
            }
        }
        return count
    }
    
    func ricotta() -> Int {
        var count = 0
        
        for layer in layers {
            if layer == "ricotta" {
                count += 1
            }
        }
        return count
    }
    
    func bechamel() -> Int {
        var count = 0
        
        for layer in layers {
            if layer == "béchamel" {
                count += 1
            }
        }
        return count
    }
    
    func lasagna() -> Int {
        var count = 0
        
        for layer in layers {
            if layer == "lasagna" {
                count += 1
            }
        }
        return count
    }
    
    func meat() -> Int {
        var count = 0
        
        for layer in layers {
            if layer == "meat" {
                count += 1
            }
        }
        return count
    }
    
    func sauce() -> Int {
        var count = 0
        
        for layer in layers {
            if layer == "sauce" {
                count += 1
            }
        }
        return count
    }
    
    let firstOption = mozzarella() + ricotta() + bechamel()
    let secondOption = meat() + sauce()
    
    return firstOption <= secondOption
}