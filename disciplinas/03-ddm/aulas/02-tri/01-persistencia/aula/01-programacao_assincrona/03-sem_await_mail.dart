// ignore_for_file: avoid_print, file_names

Future<String> buscarDadosUsuario() async {
  print('Buscando dados do usuario');

  await Future.delayed(Duration(seconds: 2));

  print('Dados do usuario carregados');

  return 'usuario';
}

Future<void> buscarEmailUsuario() async {
  print('Buscando email do usuario');

  String usuario = await buscarDadosUsuario();

  await Future.delayed(Duration(seconds: 4));

  print('Email do usuario carregado: $usuario@email.com');
}

void desenharEstrutura() {
  print('Desenhando estrutura da pagina');
}

void desenharCampos() {
  print('Desenhando campos');
}

void desenharLogo() {
  print('Desenhando logo');
}

void apresentarDados() {
  print('Apresentando dados na tela');
}

void main() {
  print('Inicio');

  desenharEstrutura();
  desenharCampos();
  desenharLogo();

  buscarEmailUsuario(); // Sem await: a funcao inicia, mas main nao espera.

  apresentarDados();

  print('Fim');
}
