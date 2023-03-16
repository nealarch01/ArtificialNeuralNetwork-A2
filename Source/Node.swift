import Foundation 

struct Node: Codable {
    var collector: Double
    var connections: [Edge]

    init(collector: Double = 0.0) {
        self.collector = collector
        self.connections = []
    }

    mutating func addConnection(node: Node, weight: Double = Double.random(in: -1.0...1.0)) {
        self.connections.append(Edge(node: node, weight: weight))
    }

    func display() {
        print("Node {")
        print("\tcollector: \(collector)")
        for edge in connections {
            edge.display()
        }
        print("}")
    }
}
