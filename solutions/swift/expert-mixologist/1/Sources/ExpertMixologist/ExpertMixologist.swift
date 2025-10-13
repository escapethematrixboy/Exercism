func timeToPrepare(drinks: [String]) -> Double {
    var total: Double = 0.0
    
    for drink in drinks {
        switch drink {
        case "beer", "soda", "water":
            total += 0.5
            
        case "shot":
            total += 1.0
            
        case "mixed drink":
            total += 1.5
            
        case "fancy drink":
            total += 2.5
            
        case "frozen drink":
            total += 3.0
            
        default:
            break
        }
    }
    return total
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var totalNeeded: Int = 0
    var totalLimes: Int = 0
    
    for lime in limes {
        if totalNeeded >= needed { break }
        
        switch lime {
        case "small":
            totalNeeded += 6
            totalLimes += 1
            
        case "medium":
            totalNeeded += 8
            totalLimes += 1
            
        case "large":
            totalNeeded += 10
            totalLimes += 1
            
        default:
            break
        }
    }
    return totalLimes
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var timeLeft = Double(minutesLeft)
    var orders = remainingOrders
    
    while !orders.isEmpty {
        let currentOrder = orders.first!
        let orderTime = timeToPrepare(drinks: currentOrder)
        
        if orderTime <= timeLeft {
            timeLeft -= orderTime
            orders.removeFirst()
        } else {
            orders.removeFirst()
            break
        }
    }
    
    return orders
}


func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?,
  soda: (first: String, last: String, total: Int)?
) {
    var beerFirst: String?
    var beerLast: String?
    var beerTotal = 0
    
    var sodaFirst: String?
    var sodaLast: String?
    var sodaTotal = 0
    
    for order in orders {
        switch order.drink {
        case "beer":
            beerTotal += 1
            if beerFirst == nil { beerFirst = order.time }
            beerLast = order.time
            
        case "soda":
            sodaTotal += 1
            if sodaFirst == nil { sodaFirst = order.time }
            sodaLast = order.time
            
        default:
            break
        }
    }
    
    var beerTuple: (first: String, last: String, total: Int)?
    var sodaTuple: (first: String, last: String, total: Int)?
    
    if beerTotal > 0 {
        beerTuple = (first: beerFirst!, last: beerLast!, total: beerTotal)
    } else {
        beerTuple = nil
    }
    
    if sodaTotal > 0 {
        sodaTuple = (first: sodaFirst!, last: sodaLast!, total: sodaTotal)
    } else {
        sodaTuple = nil
    }
    
    return (beerTuple, sodaTuple)
}