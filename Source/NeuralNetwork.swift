struct NeuralNetwork {
    var layers: [[Node]] = []
    var lastIndex: Int? { 
        if layers.count == 0 { return nil }
        return layers.count - 1 
    }
    init? (topology: NetworkTopology) {
        // Check if the array is in descending order
        if !areLayerSizesValid(topology.layers) {
            print("Error: Layer sizes must be descending")
            return nil
        }

        // Sizes of the neural network are valid
        for size in topology.layers {
            let column = createLayer(size: size)
            layers.append(column) 
        }
    }

    private func areLayerSizesValid(_ layerTopology: [Int]) -> Bool { 
        if layerTopology.count < 2 {
            return false
        }

        var least = layerTopology[0]

        for index in 1..<layerTopology.count {
            if layerTopology[index] > least {
                return false
            }
            least = layerTopology[index]
        }
        return true
    }


    // TODO: Add a function to create a layer
    private func createLayer(size: Int) -> [Node] {
        var column: [Node] = []
        for _ in 0..<size {
            column.append(Node())
        }
        return column
    }

    public func traverseColumn(atIndex: Int) {
        if atIndex > lastIndex! {
            print("Layer does not exist")
            return
        }
        print("Layer: \(atIndex + 1)")
        for node in layers[atIndex] {
            print(node)
        }
    }

    public func traverseLayers() {
        if layers.count == 0 {
            print("The network is empty")
            return
        }
        for index in 0..<layers.count {
            traverseColumn(atIndex: index)
        }
    }
}

