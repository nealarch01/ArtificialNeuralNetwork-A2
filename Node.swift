struct Node {
    var collector: Double
    var connections: [Node]

    init(connector: Double = 0.0) {
        self.collector = connector
        self.connections = []
    }

    mutating func addConnection(node: Node) {
        connections.append(node) 
    }
}
