# Integer Overflow Bug in Hack

This repository demonstrates a potential integer overflow bug in a simple Hack program.

## Bug Description

The `baz` function calculates `(x + 1) * 2 - 1`.  If the input `x` is large enough, the intermediate calculation may result in an integer overflow.

## How to Reproduce

1. Compile the `bug.hack` file.
2. Run the compiled program.
3. Observe the output which may be unexpected due to overflow if input is large enough (e.g. INT_MAX - 1).

## Solution

The provided `solution.hack` demonstrates a mitigation technique that avoids the overflow by using a larger integer type (if available in Hack) or by adding explicit overflow checks.