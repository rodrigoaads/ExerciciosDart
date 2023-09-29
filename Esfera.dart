import 'dart:io';

// Problema: https://www.beecrowd.com.br/judge/pt/problems/view/1011

void main() {

  final pi = 3.14159;

  var radius = null;
  
  while((radius = stdin.readLineSync()) != null && radius.toString().isNotEmpty) {
    var radiusOnDouble = double.parse(radius);
    final value = (4.0 / 3) * pi * ((radiusOnDouble * radiusOnDouble) * radiusOnDouble);
    print("VOLUME = ${value.toStringAsFixed(3)}");
  }
}