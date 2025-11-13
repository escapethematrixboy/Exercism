import Foundation

enum LogLevel {
    case trace, debug, info, warning, error, fatal, unknown
    
    init(_ logLine: String) {
            if logLine.hasPrefix("[TRC]:") {
                self = .trace
            } else if logLine.hasPrefix("[DBG]:") {
                self = .debug
            } else if logLine.hasPrefix("[INF]:") {
                self = .info
            } else if logLine.hasPrefix("[WRN]:") {
                self = .warning
            } else if logLine.hasPrefix("[ERR]:") {
                self = .error
            } else if logLine.hasPrefix("[FTL]:") {
                self = .fatal
            } else {
                self = .unknown
            }
        }
    
    func shortFormat(message: String) -> String {
        switch self {
        case .trace: return "0:\(message)"
        case .debug: return "1:\(message)"
        case .info: return "4:\(message)"
        case .warning: return "5:\(message)"
        case .error: return "6:\(message)"
        case .fatal: return "7:\(message)"
        case .unknown: return "42:\(message)"
        }
    }
}

