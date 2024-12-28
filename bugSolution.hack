function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0) {
    return 0; // Handle negative input to prevent infinite recursion
  } else if (x > 10) {
    return 0; //Example of a way to deal with potentially infinite recursion by adding an upper bound. 
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This solution adds a base case for negative numbers to prevent infinite recursion, and an upper bound to prevent accidental infinite recursion. 