import 'dart:io';

// Problema: https://www.beecrowd.com.br/judge/pt/problems/view/1041

main() {
  final coor = stdin.readLineSync();
  final splited = coor?.split(" ");
  final x = double.parse(splited![0]);
  final y = double.parse(splited[1]);
  
  if (x == 0.0 && y == 0.0) {
    print("Origem");
  } else {
    print(checkPosition(x: x, y: y));
  }
  
}

String checkPosition({ required double x, required double y}) {
  if(y == 0.0 && x != 0.0) {
    return "Eixo X";
  }

  if(x == 0.0 && y != 0.0) {
    return "Eixo Y";
  }

  if (y < 0.0 && x > 0.0) {
    return "Q4";
  } else if(y < 0.0 && x < 0.0) {
    return "Q3";
  } else if(x < 0.0 && y > 0.0) {
    return "Q2";
  } else {
    return "Q1";
  }
}