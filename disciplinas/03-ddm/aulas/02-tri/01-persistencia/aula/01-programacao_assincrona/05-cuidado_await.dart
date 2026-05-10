// ignore_for_file: avoid_print, file_names

Future<String> buscarDadosUsuario() async {
  print('Buscando dados do usuario');

  await Future.delayed(Duration(seconds: 2));

  print('Dados do usuario carregados');

  return 'usuario';
}

Future<String> buscarEmailUsuario() async {
  print('Buscando email do usuario');

  // Problema: faltou await.
  // O tipo real desta variavel e Future<String>, nao String.
  var usuario = buscarDadosUsuario();

  await Future.delayed(Duration(seconds: 4));

  print('Email do usuario carregado');

  return '$usuario@email.com';
}

Future<void> main() async {
  print('Inicio');

  String email = await buscarEmailUsuario();

  print('Email final: $email');

  print('Fim');
}

// Tente encontrar 2 problemas:
// 1. faltou await em buscarDadosUsuario();
// 2. o uso de var escondeu que usuario virou Future<String>.
