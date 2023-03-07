import Foundation 

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

struct NeuralNetwork {
    var layers: [Node]
    init () {
        self.layers = [] 
    }

    func traverseLayer() {
        for layer in layers {
            print(layer.collector)
        }
    }
}

func isInputValid(input: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: #"[0-9]+"#)
}

func main() -> Int { 
    if CommandLine.argc != 2 {
        print("Usage: \(CommandLine.arguments[0]) <input-file>")
        return 1
    }
    let inputFile = CommandLine.arguments[1]
    // Read the file 
    let fileContents = try String(contentsOfFile: inputFile, encoding: String.Encoding.utf8)
    var networkTopology: [Int] = []
    for value in input.components(separatedBy: ",") {
        guard let num = Int(value) else {
            return 1
        }
        networkTopology.append(num)
    }
    print(networkTopology)
    return 0
}

if main() != 0 {
    print("An error occured.")
}


