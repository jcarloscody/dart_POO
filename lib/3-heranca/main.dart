import 'heranca_covariante/banana.dart';
import 'heranca_covariante/fruta.dart';
import 'heranca_covariante/humano.dart';
import 'heranca_covariante/macaco.dart';

void main() {
  final h = Humano();
  final m = Macaco();
  h.comer(Fruta());
  m.comer(Banana());
}
