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
Printing last layer
Node {
	collector: 46.0
}
========================================
Printing all layers
Node {
	collector: 4.1
	Edge {
		weight: -0.549798555983384
	}
	Edge {
		weight: 0.1258037329851487
	}
}
Node {
	collector: 5.5
	Edge {
		weight: 0.4500485402521932
	}
	Edge {
		weight: -0.16153685726249756
	}
}
Node {
	collector: 3.3
	Edge {
		weight: -0.1874630423055561
	}
	Edge {
		weight: 0.8245724682572293
	}
}
Node {
	collector: 10.1
	Edge {
		weight: 0.21243225385861186
	}
	Edge {
		weight: 0.05266975031369436
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.18900155444569577
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.9818573050348232
	}
}
Node {
	collector: 46.0
}
========================================
```


## Output for `inputB.json`:
```
Printing last layer
Node {
	collector: 138.0
}
========================================
Printing all layers
Node {
	collector: 4.1
	Edge {
		weight: -0.6295740836982202
	}
	Edge {
		weight: 0.5470757279834388
	}
	Edge {
		weight: -0.9506611605907662
	}
}
Node {
	collector: 5.5
	Edge {
		weight: 0.12678894866196844
	}
	Edge {
		weight: 0.5473060737590218
	}
	Edge {
		weight: -0.26394074975821424
	}
}
Node {
	collector: 3.3
	Edge {
		weight: -0.06305299587711155
	}
	Edge {
		weight: 0.3219544168956383
	}
	Edge {
		weight: -0.5017160872786468
	}
}
Node {
	collector: 10.1
	Edge {
		weight: -0.3618806401904111
	}
	Edge {
		weight: 0.5607995251608575
	}
	Edge {
		weight: 0.13194769658492667
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.4934521521227173
	}
	Edge {
		weight: -0.569914311419222
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.18316655261206938
	}
	Edge {
		weight: -0.8217497535803924
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.29708096585526333
	}
	Edge {
		weight: 0.4879772278908714
	}
}
Node {
	collector: 69.0
	Edge {
		weight: 0.7062758514490852
	}
}
Node {
	collector: 69.0
	Edge {
		weight: -0.4956317835623616
	}
}
Node {
	collector: 138.0
}
========================================
```

## Output for `inputC.json`
```
Printing last layer
Node {
	collector: 552.0
}
========================================
Printing all layers
Node {
	collector: 4.1
	Edge {
		weight: 0.8685941106281212
	}
	Edge {
		weight: 0.9445190262649048
	}
	Edge {
		weight: 0.4220735402365705
	}
	Edge {
		weight: 0.02143405748433569
	}
}
Node {
	collector: 5.5
	Edge {
		weight: -0.6392270202706292
	}
	Edge {
		weight: -0.007352273191089331
	}
	Edge {
		weight: -0.08424453813731114
	}
	Edge {
		weight: 0.20479112741122774
	}
}
Node {
	collector: 3.3
	Edge {
		weight: 0.7470900057480911
	}
	Edge {
		weight: 0.6582406573834567
	}
	Edge {
		weight: -0.3505146963327077
	}
	Edge {
		weight: -0.516438431965976
	}
}
Node {
	collector: 10.1
	Edge {
		weight: 0.10695427882214448
	}
	Edge {
		weight: 0.12284277340141592
	}
	Edge {
		weight: 0.29999855693665545
	}
	Edge {
		weight: -0.1936665565140423
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.7141419846278314
	}
	Edge {
		weight: 0.41304669502314484
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.2597475860545049
	}
	Edge {
		weight: -0.2461260474323359
	}
}
Node {
	collector: 23.0
	Edge {
		weight: -0.7856573138393361
	}
	Edge {
		weight: -0.07052587314428904
	}
}
Node {
	collector: 23.0
	Edge {
		weight: 0.8647303501954302
	}
	Edge {
		weight: 0.15457913763099596
	}
}
Node {
	collector: 92.0
	Edge {
		weight: -0.8884266395030982
	}
	Edge {
		weight: 0.509790433294314
	}
	Edge {
		weight: -0.3962099111658184
	}
}
Node {
	collector: 92.0
	Edge {
		weight: 0.9937540586639084
	}
	Edge {
		weight: 0.11936967890044659
	}
	Edge {
		weight: -0.3966275744424108
	}
}
Node {
	collector: 184.0
	Edge {
		weight: 0.19293989904311482
	}
}
Node {
	collector: 184.0
	Edge {
		weight: -0.6336813981580609
	}
}
Node {
	collector: 184.0
	Edge {
		weight: 0.011085823502549497
	}
}
Node {
	collector: 552.0
}
========================================
```
