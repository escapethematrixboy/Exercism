func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
    var count = 0
    for bird in birdsPerDay {
        count += bird
    }
    return count
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    var count = 0
    let start = (weekNumber - 1) * 7
    let end = start + 6
    let week = birdsPerDay[start...end]
    for bird in week {
        count += bird
    }
    return count
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    var modifiedBirds = birdsPerDay
    for i in stride(from: 0, to: modifiedBirds.count, by: 2) {
        modifiedBirds[i] += 1
    }
    return modifiedBirds
}