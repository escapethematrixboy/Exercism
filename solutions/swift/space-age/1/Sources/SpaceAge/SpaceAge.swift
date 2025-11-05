class SpaceAge {
    let seconds: Double
    private let earthYearInSeconds = 31_557_600.0
    
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    
    private func age(on planet: String) -> Double {
        let orbitalPeriods: [String: Double] = [
            "Mercury": 0.2408467,
            "Venus": 0.61519726,
            "Earth": 1.0,
            "Mars": 1.8808158,
            "Jupiter": 11.862615,
            "Saturn": 29.447498,
            "Uranus": 84.016846,
            "Neptune": 164.79132
        ]
        guard let period = orbitalPeriods[planet] else { return 0.0 }
        return seconds / (earthYearInSeconds * period)
    }
    
    var onMercury: Double { age(on: "Mercury") }
    var onVenus: Double { age(on: "Venus") }
    var onEarth: Double { age(on: "Earth") }
    var onMars: Double { age(on: "Mars") }
    var onJupiter: Double { age(on: "Jupiter") }
    var onSaturn: Double { age(on: "Saturn") }
    var onUranus: Double { age(on: "Uranus") }
    var onNeptune: Double { age(on: "Neptune") }
}