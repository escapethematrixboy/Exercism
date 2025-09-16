func dailyRateFrom(hourlyRate: Int) -> Double {
    
    return Double(hourlyRate * 8)
    
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    
    let totalWithoutDiscount = hourlyRate * 22 * 8 // 13 552
    let discountFormula = 1 - (discount / 100) // 0.105
    let totalWithDiscount = Double(totalWithoutDiscount) * discountFormula
    
    return totalWithDiscount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    
    let discountFormula = 1 - (discount / 100)
    let formula = Double(hourlyRate) * discountFormula * 8
    let total = budget / formula
    
    return total.rounded(.down)
    
}