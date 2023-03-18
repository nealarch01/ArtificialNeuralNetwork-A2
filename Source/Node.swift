class Node {
    var collector: Double
    var connections: [Node]

    init(collector: Double = 0.0) {
        self.collector = collector
        self.connections = []
    }

    func addConnection(node: Node) {
        self.connections.append(node) 
    }
}
