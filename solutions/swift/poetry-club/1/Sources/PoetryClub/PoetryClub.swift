import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    return poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
    var acronym = ""
    let separated = phrase.components(separatedBy: "\n")
    
    for line in separated {
        if let firstLine = line.first {
            acronym.append(firstLine)
        } else {
            acronym.append("_")
        }
    }
    return acronym.uppercased()
}

func backDoorPassword(_ phrase: String) -> String {
    var acronym = ""
    let correctedPhrase = phrase.replacingOccurrences(of: " ", with: "")
    let separated = correctedPhrase.components(separatedBy: "\n")
    
    for line in separated {
        if let lastChar = line.last {
            acronym.append(lastChar)
        }
    }
    return "\(acronym), please"
}

func secretRoomPassword(_ phrase: String) -> String {
    var letters = ""
    let correctedPhrase = phrase.replacingOccurrences(of: " ", with: "")
    let separated = correctedPhrase.components(separatedBy: "\n")
    
    for i in 0..<separated.count {
        let line = separated[i]
        if line.count > i {
            let index = line.index(line.startIndex, offsetBy: i)
            letters.append(line[index])
        } else {
            print("_")
        }
    }
    return ("\(letters.uppercased())!")
}