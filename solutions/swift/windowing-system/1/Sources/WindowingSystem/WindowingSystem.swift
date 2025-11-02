struct Size {
    var width: Int
    var height: Int
    
    init(width: Int = 80, height: Int = 60) {
        self.width = width
        self.height = height
    }
    
    mutating func resize(newWidth: Int, newHeight: Int) {
        self.width = newWidth
        self.height = newHeight
    }
}

struct Position {
    var x: Int
    var y: Int
    
    init(x: Int = 0, y: Int = 0) {
        self.x = x
        self.y = y
    }
    
    mutating func moveTo(newX: Int, newY: Int) {
        self.x = newX
        self.y = newY
    }
}

class Window {
    var title: String = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String? = nil
    
    init() {}
    
    init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
            self.title = title
            self.contents = contents
            self.size = size
            self.position = position
        }
    
    func resize(to newSize: Size) {
        var width = max(newSize.width, 1)
        var height = max(newSize.height, 1)
        
        let maxWidth = screenSize.width - position.x
        let maxHeight = screenSize.height - position.y
        
        width = min(width, maxWidth)
        height = min(height, maxHeight)
        
        size = Size(width: width, height: height)
    }
    
    func move(to newPosition: Position) {
        var x = newPosition.x
        var y = newPosition.y
        
        x = max(x, 0)
        y = max(y, 0)

        x = min(x, screenSize.width - size.width)
        y = min(y, screenSize.height - size.height)

        position = Position(x: x, y: y)
    }
    
    func update(title newTitle: String) {
        title = newTitle
    }
    
    func update(text newText: String?) {
        contents = newText
    }
    
    func display() -> String {
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}






