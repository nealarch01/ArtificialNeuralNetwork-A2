import Foundation 

struct NetworkTopology: Decodable {
    var layers: [Int]
    var collectors: [Double]


    public func isValid() -> Bool {
        if layers.count < 2 { 
            print("There must be at least 2 layers")
            return false 
        }
        if layers[0] != collectors.count {
            print("The number of collectors must be equal to the number of nodes in the first layer")
            return false
        }
        return true
    }
}

