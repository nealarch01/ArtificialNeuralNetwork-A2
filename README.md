# Artificial Neural Network Data Structure
CS 471 Assignment 2

Implemented in Swift


## Project Structure
```
.
├── README.md
├── Source
│   ├── NetworkTopology.swift
│   ├── NeuralNetwork.swift
│   └── Node.swift
├── build.sh
├── input.json
├── main.swift
└── run.sh
```


## Application Details:
- Not implemented in Xcode (program can be built from the command line)
- Compiled using `swiftc`
- `build.sh` builds the program and creates an executable `a`
- `run.sh` builds the program using build.sh but executes with an additional argument: `input.json`

### Executing the Program:
After building, execute the file using format: `./a <input-file.json>`
Note: JSON input file must follow the schema below:

```json
{
	"layers": [4, 2, 1],
	"collectors": [4.1, 5.5, 3.3, 10.1]
}
```


## Output for `inputA.json`:
```
Printing last layer
Node {
	collector: 46.0,
	connection_count: 0
	weights: []
}
========================================
Printing all layers
Node {
	collector: 4.1,
	connection_count: 2
	weights: [0.9319460932744077, 0.11832567572046404]
}
Node {
	collector: 5.5,
	connection_count: 2
	weights: [0.698022289692311, 0.823950875676844]
}
Node {
	collector: 3.3,
	connection_count: 2
	weights: [0.20363157952675193, 0.7662714716937516]
}
Node {
	collector: 10.1,
	connection_count: 2
	weights: [0.1031135437326618, 0.3203873114689202]
}
Node {
	collector: 23.0,
	connection_count: 1
	weights: [0.7543183526380702]
}
Node {
	collector: 23.0,
	connection_count: 1
	weights: [0.012015927108833258]
}
Node {
	collector: 46.0,
	connection_count: 0
	weights: []
}
========================================
```


## Output for `inputB.json`:
```
Printing last layer
Node {
	collector: 138.0,
	connection_count: 0
	weights: []
}
========================================
Printing all layers
Node {
	collector: 4.1,
	connection_count: 3
	weights: [0.4655154798798572, 0.12951641670305547, 0.388331175564248]
}
Node {
	collector: 5.5,
	connection_count: 3
	weights: [0.2898337892105165, 0.7933857661208327, 0.6584149646821252]
}
Node {
	collector: 3.3,
	connection_count: 3
	weights: [0.47884024240057355, 0.568083711519508, 0.09870081156476562]
}
Node {
	collector: 10.1,
	connection_count: 3
	weights: [0.2323991486404584, 0.006617367176221967, 0.9623766669239604]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.5479800376321687, 0.25307695057621293]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.2983109768837632, 0.04171840016642514]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.07257631779514462, 0.12578373025773215]
}
Node {
	collector: 69.0,
	connection_count: 1
	weights: [0.5345422235410865]
}
Node {
	collector: 69.0,
	connection_count: 1
	weights: [0.36912717079887436]
}
Node {
	collector: 138.0,
	connection_count: 0
	weights: []
}
========================================
```

## Output for `inputC.json`
```
Printing last layer
Node {
	collector: 552.0,
	connection_count: 0
	weights: []
}
========================================
Printing all layers
Node {
	collector: 4.1,
	connection_count: 4
	weights: [0.5989314709391406, 0.3637913737959224, 0.06609071008350853, 0.36462974554679894]
}
Node {
	collector: 5.5,
	connection_count: 4
	weights: [0.6440159866019277, 0.5765158354363732, 0.25433287779811486, 0.8899560290205499]
}
Node {
	collector: 3.3,
	connection_count: 4
	weights: [0.3102971315797872, 0.7961630700848124, 0.7317738458579858, 0.04558067663725107]
}
Node {
	collector: 10.1,
	connection_count: 4
	weights: [0.5777117283306451, 0.42647183644750164, 0.37183910216144167, 0.3064252906229148]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.22384724636850484, 0.36265050362039775]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.11692712017880369, 0.2969564483065896]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.1977241221754945, 0.36810012024986605]
}
Node {
	collector: 23.0,
	connection_count: 2
	weights: [0.8674976978568056, 0.7751866243221867]
}
Node {
	collector: 92.0,
	connection_count: 3
	weights: [0.6472926376596633, 0.1637243572074939, 0.4679465761644618]
}
Node {
	collector: 92.0,
	connection_count: 3
	weights: [0.3471424840624666, 0.7829519554210236, 0.11208195450352043]
}
Node {
	collector: 184.0,
	connection_count: 1
	weights: [0.0115519005638558]
}
Node {
	collector: 184.0,
	connection_count: 1
	weights: [0.2835764980405946]
}
Node {
	collector: 184.0,
	connection_count: 1
	weights: [0.7908341253434868]
}
Node {
	collector: 552.0,
	connection_count: 0
	weights: []
}
========================================
```
