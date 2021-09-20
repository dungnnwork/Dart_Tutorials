/* giải phuong trinh : x^2 + 2x + 1 = 0 */
import 'dart:math';

delta({int a = 1, int b = 2, int c = 1}) {
  return b * b - 4 * a * c;
}

var a = 1;
var b = 2;
main() {
  if (delta == 0 || delta != 0) {
    print('phuong trinh co nghiem kep x1=x2= ${-b / 2 * a}');
  } else if (delta != 0) {
    print('phuong trinh co 2 nghiem phan biet x1=');
  } else {
    print('phuong trinh vo nghiem');
  }
}
