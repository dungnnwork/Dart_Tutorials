// 1. Using class members
var p = Point(2, 2);
// Use a dot (.) to refer to an instance variable or method
// Get the value of y
assert(p.y == 2);
// Invoke distanceTo() on p
double distance = p.distanceTo(Point(4,4)); 
// Use ? instead of . to avoid an exception when the leftmost operand is null
// if p is non- null , set a variable equal to its y value
var a = p?.y
/* Can creat an object using a " contructor" 
Contructor names can be either :" classname" or "classname.identifier"
example
 */
// 2.Using constructors
var p1 = Point(2,2);
var p2 = Point.fromJson({'x' : 1, 'y' : 2});
/* Somes classes provide constant construntor . To creat a compile time
constant using a constant constructor , put the "const" keyword before the 
constructor name
  */
var cons = const ImmutablePoint(2, 2);
var conss = const ImmutablePoint(2, 2);
assert(indentical(cons, conss)); // they are same instance
/* within a constant context, can omit the "const" before a constructor or
literal
 */
const pointAndLine = const {
  'point' : const [const ImmutablePoint(0, 0)],
  'liine' : const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
};
// Can omit all but the first use of the "const" keyword
/*
const pointAndLine = {
  'point' : [ImmutablePoint(0, 10)],
  'line' : [ImmutalbePoint(1, 10), ImmutabalePoint(-2, 11)],
} ;
 */
/* If a constant constructor is outside of a constant context and is invoked 
without const, it creates a non- constant object 
 */
var d = const ImmutablePoint(1, 1); // creates  a constant
var n = ImmutablePoint(1, 1); // dose not create a constant
assert(!identical(d, n));// NOT the same instance



