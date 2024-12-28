function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This code will result in a stack overflow error because it tries to make too many recursive calls, exceeding the maximum recursion depth.
//This is a common error, but can be hard to spot, and the error message itself is not as informative as other error messages.
//The problem is that the recursive function foo calls itself repeatedly without a base case that will eventually stop the recursion.