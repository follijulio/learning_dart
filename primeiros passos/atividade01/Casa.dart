class Casa {
  late String _dono;
  late int numPortas;
  late bool portaAberta;

  //A MISERA DO CONSTRUTOR
  Casa({required dono, required this.numPortas, required this.portaAberta});

  //MÉTODOS BÁSICOS
  void exibir() {
    print("DONO ${_dono}");
  }

  void abrirPorta() {
    setAberta(true);
  }

  void fecharPorta() {
    setAberta(false);
  }

  //GETTINHOS
  String get dono {
    return this.dono;
  }

  int getPortas() {
    return this.numPortas;
  }

  bool getPortaAberta() {
    return this.portaAberta;
  }

  //SETTINHOS
  setAberta(bool aberta) {
    if (aberta) {
      this.portaAberta = true;
    } else {
      print("A porta já está aberta");
    }
  }
}
