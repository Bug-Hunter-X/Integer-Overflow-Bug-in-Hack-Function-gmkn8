```hack
function foo(x: int): int {
  // Check for potential overflow before adding 1
  if (x == HHVM_INT_MAX) {
    throw new Exception("Integer overflow detected in foo");
  }
  return x + 1;
}

function bar(x: int): int {
  // Check for potential overflow before multiplying by 2
  if (x > HHVM_INT_MAX / 2) {
    throw new Exception("Integer overflow detected in bar");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  // Check for potential overflow before subtracting 1
  if (x == HHVM_INT_MIN) {
    throw new Exception("Integer overflow detected in baz");
  }
  return bar(x) - 1;
}

function main(): void {
  var x: int = 5;
  var y: int = baz(x);
  print_int(y);
}
```