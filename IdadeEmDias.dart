import 'dart:io';

// Problema: https://www.beecrowd.com.br/judge/pt/problems/view/1020

void main() {

  final year = 365;
  final month = 30;
  final day = 1;

  var input= stdin.readLineSync();

  final inputInt = int.parse(input ?? "");
  final years = inputInt ~/ year;
  final months = (inputInt % year) ~/ month;
  final days = ((inputInt % year) % month) ~/ day;
  print("$years ano(s)\n$months mes(es)\n$days dia(s)");
}