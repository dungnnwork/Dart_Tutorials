/* 1. Lexical scope */
import 'dart:html';

bool topLevel = true;
void main() {
  var insideMain = true;
  void myFunction() {
    var insideFunction = true;
    void nestedFunction() {
      var insideNestedFunction = true;
    }
  }

  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
    var add2 = makeAdder(2);
    var add4 = makeAdder(4);
    assert(add2(3) == 5);
    assert(add4(4) == 7);
  }

  /* 2. Testing functions for equality
   */
  void foo() {} // A top-level function
  // Comparing top -level Functions
  Function x;
  x = foo;
  assert(foo == x);
  // Comparing static methods
}
