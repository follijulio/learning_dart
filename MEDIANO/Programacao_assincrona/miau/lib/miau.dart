int toInt(String text) {
  int valor;
  try {
    valor = int.parse(text);
  } catch (e) {
    print(e);
    valor = 0;
  }
  return valor;
}
