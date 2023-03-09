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
