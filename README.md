[![Build Status](https://travis-ci.org/alext234/dapp-tutorial.svg?branch=master)](https://travis-ci.org/alext234/dapp-tutorial)

# dapp-tutorial
Simple project created from dapp.tools

## Overview 

The whole project directory is created as follows:

```
mkdir dapp-tutorial
dapp init
```

To build:

```
make all
```


To run test

```
make test
```

## dapp

`dapps` is a set of command-friendly tools for development with Ethereum.
Installation instruction is available at https://dapp.tools/


## Directory structure

```
├── lib
│   └── ds-test
│       ├── Dappfile
│       ├── LICENSE
│       ├── Makefile
│       └── src
│           └── test.sol
├── LICENSE
├── Makefile
├── out
│   ├── ...
├── README.md
└── src
    ├── DappTutorial.sol
    └── DappTutorial.t.sol

```


`dapp` generates empty contract  in `src/DappTutorial.sol`:

```
pragma solidity ^0.4.19;

contract DappTutorial {
}

```

together with the unit test in `src/DappTutorial.t.sol`:

```
pragma solidity ^0.4.19;

import "ds-test/test.sol";

import "./DappTutorial.sol";

contract DappTutorialTest is DSTest {
    DappTutorial tutorial;

    function setUp() public {
        tutorial = new DappTutorial();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}

```

Unit testing doc is available here https://github.com/dapphub/dapp/blob/master/docs/unit_testing.rst

- `setUp` is inherited from `DSTest`. This can be overridden to have the execution steps
  before each test case.
- Functions with the `test` prefix are evaluated for correctness.
- Functions with the `testFail` prefix are considered correct if they throw an exception.
