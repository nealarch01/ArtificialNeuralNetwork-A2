import Foundation 

struct Node {
    var collector: Double
    var connections: [Node]
    var weights: [Double]

    init(collector: Double = 0.0) {
        self.collector = collector
        self.connections = []
        self.weights = []
    }

    mutating func addConnection(node: Node) {
        self.connections.append(node) 
        self.weights.append(Double.random(in: 0.0..<1.0))
    }
}
