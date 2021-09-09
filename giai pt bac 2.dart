/* giải phuong trinh : x^2 + 2x + 1 = 0 */
import 'dart:math';

nghiemPhuongTrinh(int x) {
  return a * x * x + b * x + c == 0;
}

var a = 1;
var b = 2;
var c = 1;
var delta = b * b - 4 * a * c;
var i = sqrt(delta);
main() {
  if (delta == 0) {
    print('phuong trinh có nghiệm kép là x1 = x2 = ${-(b / 2 * a)}');
  } else if (delta < 0) {
    print('phuong trinh vo nghiem');
  } else {
    print(
        'pt có 2 nghiệm phân biệt là x1 = ${(-b + i) / (2 * a)} và x2 = ${(-b - i) / (2 * a)}');
  }
}
