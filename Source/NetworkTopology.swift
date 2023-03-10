import Foundation 

struct NetworkTopology: Decodable {
    var layers: [Int]
    var collectors: [Double]


    public func isValid() -> Bool {
        if layers.count < 2 { 
            print("There must be at least 2 layers")
            return false 
        }
        if !isDescending() { 
            print("Value of layers must be descending")
            return false 
        }
        if layers[0] != collectors.count {
            print("The number of collectors must be equal to the number of nodes in the first layer")
            return false
        }
        return true
    }

    private func isDescending() -> Bool {
        var least = layers[0]
        for i in 1..<layers.count {
            if least < layers[i] {
                return false
            }
            least = layers[i]
        }
        return true
    }
}

