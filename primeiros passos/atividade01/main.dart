import 'Casa.dart';

void main() {
  print('Hello World');
  Casa casa1 = new Casa(
    dono: 'Júlio',
    numPortas: 2,
    portaAberta: false,
  );
  casa1.abrirPorta();
  casa1.exibir();
}
