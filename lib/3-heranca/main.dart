import 'package:dart_poo/3-heranca/dog.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/banana.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/fruta.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/humano.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/macaco.dart';

void main() {
  final h = Humano();
  final m = Macaco();
  h.comer(Fruta());
  m.comer(Banana());
}
