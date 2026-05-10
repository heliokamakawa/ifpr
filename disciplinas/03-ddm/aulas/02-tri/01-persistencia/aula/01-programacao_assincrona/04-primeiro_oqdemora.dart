// ignore_for_file: avoid_print, file_names

Future<String> buscarDadosUsuario() async {
  print('Buscando dados do usuario');

  await Future.delayed(Duration(seconds: 2));

  print('Dados do usuario carregados');

  return 'usuario';
}

Future<String> buscarEmailUsuario() async {
  print('Buscando email do usuario');

  String usuario = await buscarDadosUsuario();

  await Future.delayed(Duration(seconds: 4));

  print('Email do usuario carregado');

  return '$usuario@email.com';
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

void apresentarDados(String email) {
  print('Apresentando dados na tela: $email');
}

Future<void> main() async {
  print('Inicio');

  // Inicia primeiro a operacao mais demorada.
  Future<String> emailFuturo = buscarEmailUsuario();

  desenharEstrutura();
  desenharCampos();
  desenharLogo();

  // Espera o resultado apenas quando ele passa a ser necessario.
  String email = await emailFuturo;

  apresentarDados(email);

  print('Fim');
}
