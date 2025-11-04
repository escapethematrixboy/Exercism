func toRna(_ dna: String) -> String {
    var rna = ""
    
    for i in dna {
        switch i {
            
        case "G":
            rna += "C"
            
        case "C":
            rna += "G"
            
        case "T":
            rna += "A"
            
        case "A":
            rna += "U"
            
        default:
            rna += ""
        }
    }
    
    return rna
}