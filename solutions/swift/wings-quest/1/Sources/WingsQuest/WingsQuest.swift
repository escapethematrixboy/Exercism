func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if powerUpActive == true && touchingEagle == true {
        return true
    } else {
        return false
    }
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    if touchingPowerUp == true || touchingSeed == true {
        return true
    } else {
        return false
    }
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if touchingEagle == true && powerUpActive == false {
        return true
    } else {
        return false
    }
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if hasPickedUpAllSeeds == true && touchingEagle == false && powerUpActive == true {
        return true
    }
    
    if hasPickedUpAllSeeds == true && touchingEagle == false && powerUpActive == false {
        return true
    }
    
    else {
        return false
    }
}
