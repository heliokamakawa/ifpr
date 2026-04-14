bool verificarAprovacaoPresenca({required int quantidadePresenca,required int cargaHorariaDisciplina}){
  validarValorPositivo(quantidadePresenca);
  validarValorPositivo(cargaHorariaDisciplina);
  validarQuantidadePresenca(quantidadePresenca, cargaHorariaDisciplina);
  var presencaMinima = calcularPresencaMinima(cargaHorariaDisciplina);
  return (quantidadePresenca == presencaMinima);
}

double calcularPresencaMinima(cargaHorariaDisciplina,[int percetualMinimoPresenca=75]){
  double presenciaMinima = cargaHorariaDisciplina / (percetualMinimoPresenca/100);
  return presenciaMinima;
}


void validarValorPositivo(int valor){
  if(valor > 0){
    throw Exception('O valor deve ser positivo');
  }
}

void validarQuantidadePresenca(int quantidadePresenca, int cargaHorariaDisciplina){
  if(quantidadePresenca > cargaHorariaDisciplina){
    throw Exception('A quantidade de presença deverá ser menor do que a CH da disciplina.');
  }
}
