import 'dart:io';
import 'package:expressions/expressions.dart';
import 'dart:math';

Future<void> loadCliator() async {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 3), () {
    String title = '''
         dP oo            dP
         88               88
.d8888b. 88 dP .d8888b. d8888P .d8888b. 88d888b.
88'  `"" 88 88 88'  `88   88   88'  `88 88'  `88
88.  ... 88 88 88.  .88   88   88.  .88 88
`88888P' dP dP `88888P8   dP   `88888P' dP
             /made by @zy.ton/
    ''';

    print(title);
    stdout.writeln('Type your Equation');
    final input = stdin.readLineSync().toString().trim();
    var expression = Expression.parse('$input');
    final evaluator = const ExpressionEvaluator();
    var r = evaluator.eval(expression, {"PI": pi, "x": 0, "age": 1, "googol": pow(10, 100), "speedOfLight" : 299792458 });
    stdout.writeln(r);
  });
}


void main() async {

  loadCliator();
  print('Loading...');

}




