// ignore_for_file: avoid_print, file_names

/*
Cenario 6 - Async com boas praticas

Recomendacoes:
- Nao usar var quando o tipo ajuda a entender o codigo.
- Nao esquecer await quando depende do resultado.
- Tratar erro com try/catch quando a operacao pode falhar.

Ponto principal:
Se a funcao retorna Future<String>,
o resultado real so existe depois do await.
*/

Future<String> buscarDadosUsuario() async {
  print('Buscando dados do usuario');

  await Future.delayed(Duration(seconds: 2));

  print('Dados do usuario carregados');

  return 'usuario';
}

Future<String> buscarEmailUsuario() async {
  print('Buscando email do usuario');

  try {
    String usuario = await buscarDadosUsuario();

    await Future.delayed(Duration(seconds: 4));

    print('Email do usuario carregado');

    return '$usuario@email.com';
  } catch (e) {
    print('Erro ao buscar dados do usuario: $e');

    return 'Nao foi possivel carregar o email';
  }
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

  desenharEstrutura();
  desenharCampos();
  desenharLogo();

  String email = await buscarEmailUsuario();

  apresentarDados(email);

  print('Fim');
}
