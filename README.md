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
}
========================================
Printing all layers
Node {
	collector: 4.1,
	connection_count: 2
}
Node {
	collector: 5.5,
	connection_count: 2
}
Node {
	collector: 3.3,
	connection_count: 2
}
Node {
	collector: 10.1,
	connection_count: 2
}
Node {
	collector: 23.0,
	connection_count: 1
}
Node {
	collector: 23.0,
	connection_count: 1
}
Node {
	collector: 46.0,
	connection_count: 0
}
========================================
```


## Output for `inputB.json`:
```
Printing last layer
Node {
	collector: 138.0,
	connection_count: 0
}
========================================
Printing all layers
Node {
	collector: 4.1,
	connection_count: 3
}
Node {
	collector: 5.5,
	connection_count: 3
}
Node {
	collector: 3.3,
	connection_count: 3
}
Node {
	collector: 10.1,
	connection_count: 3
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 69.0,
	connection_count: 1
}
Node {
	collector: 69.0,
	connection_count: 1
}
Node {
	collector: 138.0,
	connection_count: 0
}
========================================
```

## Output for `inputC.json`
```
Printing last layer
Node {
	collector: 552.0,
	connection_count: 0
}
========================================
Printing all layers
Node {
	collector: 4.1,
	connection_count: 4
}
Node {
	collector: 5.5,
	connection_count: 4
}
Node {
	collector: 3.3,
	connection_count: 4
}
Node {
	collector: 10.1,
	connection_count: 4
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 23.0,
	connection_count: 2
}
Node {
	collector: 92.0,
	connection_count: 3
}
Node {
	collector: 92.0,
	connection_count: 3
}
Node {
	collector: 184.0,
	connection_count: 1
}
Node {
	collector: 184.0,
	connection_count: 1
}
Node {
	collector: 184.0,
	connection_count: 1
}
Node {
	collector: 552.0,
	connection_count: 0
}
========================================
```
