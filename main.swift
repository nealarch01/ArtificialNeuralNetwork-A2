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
    guard let network = NeuralNetwork(topology: networkTopology) else {
        print("Failed to initialize network")
        exit(1)
    }
    network.traverseLayers()
    exit(0)
}

main()

