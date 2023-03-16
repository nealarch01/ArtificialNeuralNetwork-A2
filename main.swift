import Foundation 

func parseInput(filename: String) -> NetworkTopology? {
    // Read the file as data
    guard let fileContents = try? String(contentsOfFile: filename) else {
        return nil
    }
    let fileData = fileContents.data(using: .utf8)!
    guard let networkTopology = try? JSONDecoder().decode(NetworkTopology.self, from: fileData) else {
        print("Failed to decode")
        return nil 
    }
    return networkTopology
}

func main() { 
    if CommandLine.argc != 2 {
        print("Usage: \(CommandLine.arguments[0]) <input-file>")
        exit(1)
    }
    let inputFile = CommandLine.arguments[1]
    guard let networkTopology = parseInput(filename: inputFile) else {
        print("Failed to parse input")
        exit(1)
    }
    if !networkTopology.isValid() {
        print("Invalid network topology input")
    }
    let network = NeuralNetwork(topology: networkTopology)
    print("Printing last layer")
    network.traverseColumn(atIndex: network.lastIndex!)
    guard let serializedNetwork = network.serialize() else {
        exit(2)
    }
    print(serializedNetwork)
    exit(0)
}

main()

