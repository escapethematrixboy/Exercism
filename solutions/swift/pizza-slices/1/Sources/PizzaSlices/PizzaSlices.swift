func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    if let newDiameter = diameter, let newSlices = slices, newDiameter >= 0, newSlices >= 1 {
        let radius = newDiameter / 2
        let area = Double.pi * radius * radius
        return area / Double(newSlices)
    } else {
        return nil
    }
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let sA = Int(slicesA)
    let dA = Double(diameterA)
    let sB = Int(slicesB)
    let dB = Double(diameterB)
    
    let areaA = sliceSize(diameter: dA, slices: sA)
    let areaB = sliceSize(diameter: dB, slices: sB)
    
    if let a = areaA, let b = areaB {
        if a > b {
            return "Slice A is bigger"
        } else if b > a {
            return "Slice B is bigger"
        } else {
            return "Neither slice is bigger"
        }
    } else if areaA != nil {
        return "Slice A is bigger"
    } else if areaB != nil {
        return "Slice B is bigger"
    } else {
        return "Neither slice is bigger"
    }
}
