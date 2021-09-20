import 'package:test/test.dart';

main(List<String> arguments) {
  print(arguments);
  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}

String say(String from, String msg, [String? device]) {
  var result = '$from says #mág';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
  print(result);
}
