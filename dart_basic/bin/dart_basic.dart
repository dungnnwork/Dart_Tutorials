// A Dart basic programs
main() {
// Review Dart _Basic
// 1.Variables
/* . Type " not restricted : var , dynamic"
   . Type " default value example : int,String,double,StingBuffer,List,Map,Set,Duration..." 
   . Final and const
 */
/* 2.Built-in type
. number <num> 
. String <String>
. boolean <bool>
. Sets <Set>
. Maps <Map>
. Runes < often replaced by the characters API>
. Symbols <Symbol>
. The value Null <Null> 
 */
/* #Number 
. int
var i = 1;
. double 
var i = 1.1
 */
// Here's how you turn a string into number,or vice versa:
// String--int
  var one = int.parse('1');
  assert(one == 1);
// String-- double
  var two = double.parse('2.2');
  assert(two == 2.2);
  // Int--String
  String motDam = 2.toString();
  assert(motDam == '2');
  // double--String
  String haiDam = 2.2.toStringAsFixed(1);
  assert(haiDam == '2.2');
  // toStringAsFixed(x) : x la so cac chu so sau dau phay
/* #String
Can concatenate strings using adjacent string literals or the operator:
 */
  var techTeamHanhThien = 'TechTeam'
      'working together for 2 weeks '
      "is that right";
  assert(techTeamHanhThien == 'Techteam working together for 2 weeks.');
  var tech = 'working' + 'together' + 'for 2 weeks';
  assert(tech == 'working together for 2 weeks');
  /* #Boolean 
  . only two objects have to type pool : true,false
   */
  // Check for an empty string
  var empty = '';
  assert(empty.isEmpty); // true
  /* #List 
  methods : first, isEmpty,isNotEmpty,length,last,contains,reversed,Single
   */
  var danhSach = ['hoan', 'long', 'dung'];
  assert(danhSach.length == 3);
  assert(danhSach[1] == 'long');
  assert(danhSach.length == 3);
  var lists = [];
  assert(lists.length == 0);
  /* To create an empty set,use {} or assign {} to variables of type 
  var names = <String or Set<String> names = {};
  syntax:
  var setName = <dataType>{elem,....,elem n};
  Set<dataType> setName = {elem1,...,elem n};
methods : add,addAll,remove,length,contains,containsAll(kiểm tra),
inrtersection(phép giao),union(phép hợp)
   */
  var techTeam = {"hoan", "long", "dung", "thanh"};
  var tcn = {"hoan", "long", "dung", "thanh", "bac"};
  tcn.intersection(techTeam); // output hoan, long,dung,thanh
  tcn.union(techTeam); // output hoan,long,dung,thanh,bac
  /* Maps
  A map is an object that asscociates keys and values,both keys and values 
  can be any type of object.
  syntax 
  var map = {
    'key1' : 'value1'
    'key2' : 'value2'
    ................... 
  };
  methods : addAll,clear,containsKey,remove...
   */
  var tenXom = {'x1': 'xóm 1', 'x2': 'xóm 2', 'x3': 'xóm 3'};
  tenXom['x4'] = 'xóm 4';
  assert(tenXom['x1'] == 'xóm 1');
  /* 3.Operator
  . Arithmetic
  . Equality and relational
  . Type test
  . Assignments
  . Logical
  ..............
   */
  /* 4.Control flow statements
  # if and else
  example
   */
  var wildFC = 5;
  var tigerFC = 6;
  if (wildFC > tigerFC) {
  } else if (tigerFC > wildFC) {
  } else {}
  /* # Operator Ternary ?:
   Syntax condition ? expression1 : expression2
   if condition = true ; expression1 will be evaluated and its value will be
   displayed
   if condition = false; expression2 will ve evaluted and its value will be
   displayed
   */
  var ketQua = wildFC > tigerFC ? wildFC - tigerFC : tigerFC - wildFC;
  print(ketQua); // output : 1
  /* For loops 
   */
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++);
  message.write('!');
  for (var z = 5; z <= 10; z++) {
    print(z); // output : 5,6,7,8,9,10
  }
  // For loops in colection
  for (var name in danhSach) {
    print(name); // output : hoan,long,dung
  }

  var phuongTrinh = "x^2 + 2*x +1";
  var delta = 0;
  if (delta == 0) {
    print("phuongTrinh co nghiem kep");
  } else if (delta > 0) {
    print("phuongTrinh co nghiem am duong");
  } else {
    print("phuongTrinh vo nghiem");
  }
  // #Do-while
  /*while (danhSach.isNotEmpty) {
    print(danhSach);
  }
  do {
    print(danhSach);
  } while (danhSach.isNotEmpty);
  */
  // #Break and countinue
  var inLiists = [7, 3, 8, 6, 2, 1, 9];
  for (var jack in inLiists) {
    if (jack % 2 == 0) {
      print(jack);
      break;
    }
  }
  for (var like = 1; like < inLiists.length; like++) {
    var dislike = inLiists[like];
    if (dislike <= 6) {
      continue;
    }
    print(" nhung so luon hon 6 la $like");
  }
}
