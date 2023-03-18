import Foundation 
import Darwin

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

func writeToFile(string: String, outputFilename: String) {
    let currentPath = URL(string: "file://" + FileManager.default.currentDirectoryPath)!
    let filepath = currentPath.appendingPathComponent(outputFilename)
    // print(filepath)
    do {
        try string.write(to: filepath, atomically: true, encoding: String.Encoding.utf8)
    } catch let error {
        print(error.localizedDescription)
    }
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
    // writeToFile(string: serializedNetwork, outputFilename: "network.json")
    exit(0)
}

main()

