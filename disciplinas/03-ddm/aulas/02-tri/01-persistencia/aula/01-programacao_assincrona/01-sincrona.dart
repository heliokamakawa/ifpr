// ignore_for_file: avoid_print, file_names

import 'dart:io';

void desenharEstrutura() {
  print('Desenhando estrutura da pagina');
}

void desenharCampos() {
  print('Desenhando campos');
}

void desenharLogo() {
  print('Desenhando logo');
}

void buscarDadosUsuario() {
  print('Buscando dados do usuario');

  // Simula espera bloqueando a execucao.
  sleep(Duration(seconds: 2));

  print('Dados do usuario carregados');
}

void buscarEmailUsuario() {
  print('Buscando email do usuario');

  buscarDadosUsuario();

  // Simula outra espera bloqueando a execucao.
  sleep(Duration(seconds: 4));

  print('Email do usuario carregado');
}

void apresentarDados() {
  print('Apresentando dados na tela');
}

void main() {
  print('Inicio');

  desenharEstrutura();
  desenharCampos();
  desenharLogo();

  buscarEmailUsuario();

  apresentarDados();

  print('Fim');
}
