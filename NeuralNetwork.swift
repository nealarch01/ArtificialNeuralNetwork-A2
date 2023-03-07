struct NeuralNetwork {
    var layers: [Node]
    init? (layersSize: [Int]) {
        // Check if the array is in descending order
        var least = layersSize[0]
        if layersSize.count < 2 {
            return nil
        }
        for index in 1..<layersSize.count {
            if layersSize[index] > least {
                return nil
            }
            least = layersSize[index]
        }


        // Begin the formation of a layer
        self.layers = [] 
    }


    // TODO: Add a function to create a layer
    private func createLayer(size: Int) -> [Node] {
        var column: [Node] = []
        for _ in 0..<size {
            column.append(Node())
        }
        return column
    }
}
