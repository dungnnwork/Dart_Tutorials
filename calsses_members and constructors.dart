                              //   Classes
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
/* 3. Getting an object's type */
// To get an object's type at runtime, you can use the Object property runTimeType
print('The type of a is ${a.runTimeType}');
/* Using class members
. Object have members consisting of function and data ( methods and instance variables, respectively )
 (Các đối tượng có các members bao gồm các hàm và dữ liệu : “methods” và “instance variables” , tương ứng )
. When call a method, you “invoke” it on an object : the method has access to that object ‘s functions and data
 ( Khi gọi một method, bạn gọi nó trên một đối tượng :
method có quyền truy cập vào các chức năng và dữ liệu của đối tượng đó )
. Use a dot (.) to refer to an instance variables or method
( Sử dụng dấy chấm để tham chiếu đến một biến phiên bản hoặc phương thức ) */
/* 4. Instance variables
      How you declare instance variables
 */
class Point {
  double? x;      // Declare instance variable x, initially null.
  double? y;     // Declare y , initially null.
  double z = 0; // Declare z, initially 0.
}
/* All uninitialized instance variables have the value null
   ( Tất cả các biến phiên bản chưa được khởi tạo đều có giá trị 'null')  
   All instance variables generate an implicit 'getter' method . Non - final 
   instance variables and 'late final' instance variables without initializers
   also generate an implicit 'setter' method.
   ( Tất cả các biến cá thể tạo ra một phương thức 'getter' ngầm định. Các biến
   phiên bản không cuối cùng và các biến phiên bản cuối cùng không có trình 
   khởi tạo cũng tạo ra một phương thức 'setter' ngầm định )
   If you initialize a non- late instance variables where it's declare , 
   the value is set when the instance is creted, which is before the constructor
   and its initilizer list execute
   ( Nếu bạn khởi tạo một biến phiên bản không trễ ở nơi nó được khai báo, 
    giá trị được đặt khi phiên bản được tạo, trước khi hàm tạo và danh sách trình
    khởi tạo của nó thực thi)
 */
class Point {
  double? x; // Declare instance variables x, initially null
  double? y; // Declare y, initially null
}
void main (){
  var point = Point ();
  point.x = 4; // Use the 'setter' method for x
  assert(point.x == 4); // Use the 'getter' method for x
  assert(point.y == null); // Values default to null
}
/*  Instance variables can be 'final', in which case they must be set exactly once
   Initialize 'final', non-late instance variables at declaration , using a 
   constructor parameter, or using a constructor's initializer list
   (Các biến phiên bản có thể là 'final' , trong trương hợp đó chúng phải được
    đặt chính xác một lần . Khởi tạo các biến phiên bản cuối cùng, không trễ
    khi khai báo, sử dụng tham số hàm tạo hoắc sử dụng danh sách trình khởi tạo
    của hàm tạo)
 */
class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();
  ProfileMark(this.name);
  ProfileMark.unname() : name = '';
}
/*  If oyu want to assign the value of a final instance variable after the
    constructor body starts , you can use 'late final', 'but be careful'
    ( Nếu bạn muốn gán giá trị của một biến phiên bản cuối cùng ssau khi phần
     thân hàm tạo bắt đâum bạn có thê sử dụng 'late final' nhưng hãy cẩn thận) 
 */
/* 5 . Constructor
    Declare a constructor by creating a function  with the same name its class
    (plus, optionally, an additional idenfifier as described in 'Name constructor'
     ). The most common from of constructor , the generative constructor,
     creates a new instance of a class 
     ( Khai báo một phương thức khởi tạo bằng cách tạo một hàm có cùng tên với
      lớp của nó 'cộng thêm ,tùy chọn, một số nhận dạng bổ sung như được mô tả
       trong các hàm tạo được đặt tên). Dạng phương thức khởi tạo phổ biến nhất
       , phương thức khởi tạo 'generative' tạo ra một thể hiện mới của một lớp )
 */
class Point {
  double x = 0;
  double y = 0;
  Point(double x, double y){
    // There 's a better way to do this, stay tuned
    this.x = x;
    this.y = y;
  }
}
 /* The 'this' keyword refers to current instance (Từ khóa ' this' đề cập đến
     phiên bản hiện tại)
     Note : Use ' this' only when there is name conflict. Otherwise, Dart style
     omits the 'this'
     ( Chỉ sử dụng ' this' khi có xung đột về tên. Nếu không, kiểu Dart bỏ qua
      'this')
      The pattern of assigning a constructor argument to an instance variables
      is so common, Dart has syntactic sugar to make it easy
      ( Mô hình gán một đối số phương thức khởi tạo cho một biến thể hiện
       rất phổ biến, Dart có cú pháp để làm cho nó dễ dàng )
  */
  class Point{
    double x = 0;
    double y =0;
    // Syntactic sugar for setting x and y
    // before the constructor body runs
    Point(this.x, this.y);
  }
  // Default constructor ( các hàm tạo mặc định)
    /* If you don't declare a constructor, a default constructor is provided 
       for you. The default constructor has no arguments and invokes the
       no-argument constructor in the superclass 
       ( Nếu bạn không khai báo một hàm tạo, một hàm tạo mặc định sẽ được
         cung cấp cho bạn. Hàm tạo mặc định thương không có đối sô và gọi
         hàm tạo không có đôi số trong lớp cha)
      Construnctor aren't inherited
       Subclasses dont'n inherit construntor from their superclass. A subclass
       that declares no constructor has only the default (no arguments, no name)
       ( Các lớp con không kế thừa các hàm tạo từ lớp cha của chúng. Một lớp con
       khai báo không có hàm tạo chỉ có hàm tạo mặc định - không có đối số không
       có tên)  
     Named constructor
      Use a named constructor to implement multiple constructor for a class
      or to provide extra clarity
       ( sử dụng hàm tạo được tên để triển khai nhiều hàm tạo cho lớp cha hoặc
       cung cấp thêm độ rõ ràng)   
     */
    const double xOrigin = 0;
    const double yOrigin = 0;
  class Point {
    double x = 0;
    double y = 0;
    Point(this.x, this.y);
    // Named constructor
    Point.origin()
    : x = xOrigin,
      y = yOrigin;
  }
     /* Remember that constructor are not inherited, which means that a super
        class's named constructor is not inherited by a subclass . If you want
        to be creted with named constructor defined in the superclass,you must
        implement that constructor in the subclass
        (Hãy nhớ rằng các hàm tạo không được kế thừa , có nghĩa là hàm tạo được
         đặt tên của lớp cha không được kế thừa bởi lớp con. Nếu bạn muốn một
         lớp con được tạo ra bằng 1 phương thức khởi tạo có tên xác định trong
         lớp cha, bạn phải khai báo phương thức khởi tạo đó trong lớp con) 
        Invoking a non- default superclass constructor
         ( Gọi một hàm lớp tạo cha không mặc định)
        By default, a constructor in a subclass calls the superclass's unnamed
        , no argument constructor. The superclass 's constructor is called
         at the beginning of the constructor body. If an initialiazer list
         is also being used, it executes before the superclass is called.
         In summary, the order of the execution is as follow:
         ( Theo mặc đinh,một hàm tạo trong một lớp con không đối số , không tên
          của lớp cha. Phương thức khởi tạo của lớp cha được gọi ở phần đầu
          của thân phương thức khởi tạo.Nếu một danh sách trình khởi tạo
           cũng đang được sử dụng , nó sẽ thực thi trước khi lớp cha được gọi.
           Tóm lại , thứ tự sẽ thực hiện như sau :)
           1. Initiliazed list ( danh sách trình khởi tạo)
           2. Superclass 's no arg constructor (hàm tạo no- arg của superclass)
           3. Main class 's no arg constructor (hàm tạo no-arg của lớp chính)
         If the superclass dosen't have unnamed, no- arguments constructor, then
         you must manually call one of the constructor in the superclass.
         Specify the superclass after a colon (:), just before the constructor
         body(if any)
         (Nếu lớp cha không có một phương thức khởi tạo không tên , không đối số
          , thì bạn phải gọi một trong những phương thức khởi trong lớp cha
          theo cách thủ công. Chỉ định phương thức khởi tạo lớp cha sau dấu
          hai châm (:) , ngay trước thân phương thức khởi tạo- nếu có)  
          In the following example, the constructor for the 'Employee' class
          calls the named constructor for its superclass, Person
     */
    class Person{
      String? firstName;
      Person.fromJson(Map data){
        print('in Person')
      }
    }
    class Employee extends Person {
      // Person dose not have a default constructor;
      // you must call super.fromJson(data).
      Employee.fromJson(Map data) : super.fromJson(data){
        print('in Employee');
      }
    }
    void main(){
      var employee = Employee.fromJson({});
      print(employee);
      // Print :
      // in Person
      // in Employee
      // Instance of 'Employee'
    }
        /* Because the arguments to the superclass constructor are evaluated
          before ivvoking the constructor, an arguments can be expression such
          as a function call
          (Bởi vì các đối số của hàm tạo lớp cha được đánh giá trước khi gọi hàm
           tạo, một đối số có thể là 1 biểu thức chẳng hạn như một lời gọi hàm ) 
         */  
     class Employee extends Person{
       Employee() : super.fromJson(fetchDefault());
     }   
      //  Warning : arguments to the superclass constructor don't have access to this
      // For example , arguments can call static methods but not instance method
      //  (Cảnh báo : các đối số đến hàm tạo lớp cha không có quyền truy cập vào điều này
      // Ví dụ, các đối số có thể gọi các phương thức tĩnh nhưng không gọi các phương thức thể hiện)

      // Initiliazer list (Danh sách trình khởi tạo)
      //  Besides invoking a superclass constructor, you can also initialize instance variables
      //  before the constructor body runs, Separate initializers with commas
      /*  ( Bên cạnh việc gọi một phương thức khởi tạo siêu lớp, bạn cũng có thể
            khởi tạo các biến thể hiện trước khi thân phương thức khởi tạo chạy
             . Phân tách các bộ khởi tạo bằng dấu phẩy)
       */
      // Initializer list sets instance variables before the constructor body runs
      Point.fromJson(Map<String, double > json)
        : x = json['x']!
          y = json['y']! {
            print('In Point.fromJson() : ($x, $y)');
          }
      // Warning : the right- hand side of an initializer doesn't have access to this
      // ( Phía bên phải của trình khởi tạo không có quyền truy cập vào phần này)   
      // During development, you cam validate inputs by using "assert" in the initializer list
      // (Trong quá trình phát triển, bạn có thể xác nhận đầu vào bằng cách  sử dụng " assert" trong danh sách trình khởi tạo)
       Point.withAssert(this.x, this.y) : assert ( x>= 0){
         print('In Point.withAssert() : ($x, $y)');
       }
      /* Initialiazer lists are handy when setting up final fields. The following
         example initializer three final fields in an initializer list
       */ 
      class Point {
        final double x;
        final double y;
        final double distanceFromOrigin;
        Point(double x, double y)
         : x = x;
           y = y;
           distanceFromOrigin = sqrt(x *)
      }
       void main(){
         var p = Point(2 , 3);
         print(p.distanceFromOrigin);
       }
  // Redirecting constructor ( Chuyển hướng các hàm tạo)
  /* Sometimes a constructor 's only purpose is to redirect to another constructor
     in the same class. A redirecting constructor 's body empty , with the
     constructor call constructor call( using 'this' instead of the class name)
     appearing after a colon (:) 
     (Đôi khi , mục đích duy nhất của một hàm là tạo chuyển hướng đến một hàm
      tạo khác trong cùng một lớp. phần thân của hàm tạo chuyển hướng trống
       , với lời gọi hàm tạo 'sử dụng hàm này thay vì tên lớp' xuất hiện  sau
        dấm hai chấm )
   */   
  class Point {
    double x , y;
    // the main constructor for this class
    Point (this.x , this.y);
    // Delegates to the main constructor
    Point.alongXAxis(doublex) : this(x, 0);
  }  
   // Constant constructor ( các hàm tạo không đổi)
    /* If your produces objects that never change, you can make these objects
      compile - time constant . To do this, define a 'const' constructor and make 
      sure that all instance variables are 'final'
      ( Nếu lớp của bạn tạo ra các đối tượng không bao giờ thay đổi, bạn có
        thể thay đổi các đối tượng này là hằng số thời gian biên dịch.Để làm
         điều này, hãy xác định một hàm tạo'const' và đảm bảo rằng tất cả
          các biến phiên bản là 'final')
     */
  class ImmutabelPoint{
    static const ImmutablePoint origin = ImmutablePoint(0 , 0);
    final double x, y;
    const ImmutablePoint(this.x, this.y);
  }       
  // Constant constructor don't always create constants. For detail , see
  // section on 'using constructor'
  // (Các hàm tạo không đổi không phải lúc nào cũng tạo ra các hằng sô . để biêt
  //  thêm chi tiết, hãy xem phần sử dụng tạo hàm)
  /* #Factory constructors
     Use the 'factory' keyword when implementing a constructor that doesn't always
     create a new instance of its class.For example, a factory constructor might
     return an instance from a cache , or might return an instance of a subtype. 
     Another use case for the factory constructor is initializing a final variables
     using logic that can't be handled in the initializer list
     (Sử dụng từ khóa 'factory' khi triển khai một hàm tạo không phải lúc nào
      cũng tạo một phiên bản  mới của lớp nó. Ví dụ : một phương thức khởi tạo
       gốc có thể trả về  một thể hiện từ bộ đệm hoặc nó có thể trả về một thể
        hiện của kiểu con. Một trường hợp sử dụng khác cho các trình tạo nhà máy
         đang khởi tạo một biến cuối cùng bằng cách sử dụng logic mà không thể
          xử lý trong danh sách trình khởi tạo)
   */
