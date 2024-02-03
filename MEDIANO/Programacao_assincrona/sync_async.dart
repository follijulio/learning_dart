void main() {
  funcao();
  print('Hello');
}

Future<void> funcao() async{
  await Future.delayed(Duration(seconds: 2));
  print('World');
}