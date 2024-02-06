# Fable NPM Packages exploration

This repository is used to explore if it could be possible to make some of the
project redirect to `NPM packages`. In this local test, we don't use real NPM
packages, but we use a local folder to simulate the NPM packages.

## Usage

Run `./equality-fails.sh`, you should see that the equality test fails because `FSharpResult$2` is coming from **inlined/embedded** version of `fable-library`.

```text
false
A:  FSharpResult$2 { tag: 0, fields: [ 42 ] }
B:  FSharpResult$2 { tag: 0, fields: [ 42 ] }
```

Then run `./equality-works.sh`, you should see that the equality test works because `FSharpResult$2` is coming from **NPM package** version of `fable-library`. Meaning that this is the same class constructor which creates the `FSharpResult` type.

```text
true
A:  FSharpResult$2 { tag: 0, fields: [ 42 ] }
B:  FSharpResult$2 { tag: 0, fields: [ 42 ] }
```
