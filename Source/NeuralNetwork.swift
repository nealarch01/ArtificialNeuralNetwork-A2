struct NeuralNetwork {
    private(set) var layers: [[Node]] = []
    var lastIndex: Int? { 
        if layers.count == 0 { return nil }
        return layers.count - 1 
    }

    init? (topology: NetworkTopology) {
        if !areLayerSizesValid(topology.layers) {
            print("Error: Layer sizes must be descending")
            return nil
        }

        if topology.layers.count == topology.collectors.count {
            print("Layers and collector array size mismatch")
            return nil
        }

        // Create the first layer 
        let firstLayer = createLayer(size: topology.layers[0], collectors: topology.collectors)
        layers.append(firstLayer)

        for i in 1..<topology.layers.count {
            let collectorSummation = layerSummation(atIndex: i - 1)
            let column = createLayer(
                size: topology.layers[i], 
                collectors: Array(
                    repeating: collectorSummation, 
                    count: topology.layers[i]
            ))
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
    mutating private func createLayer(size: Int, collectors: [Double]) -> [Node] {
        var column: [Node] = []
        for i in 0..<size {
            let newNode = Node(collector: collectors[i])
            // Go to the previous layer
            if lastIndex ?? -1 >= 0 {
                for i in 0..<layers[lastIndex!].count {
                    layers[lastIndex!][i].addConnection(node: newNode)
                }
            }
            column.append(newNode)
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
            print("Node {\n\tcollector: \(node.collector),\n\tconnection_count: \(node.connections.count)\n}")
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

    public func layerSummation(atIndex: Int) -> Double {
        var sum: Double = 0.0
        for node in layers[atIndex] {
            sum += node.collector
        }
        return sum
    }
}

