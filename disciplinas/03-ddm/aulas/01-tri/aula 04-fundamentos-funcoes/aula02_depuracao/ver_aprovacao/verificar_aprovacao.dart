import 'calculo_nota.dart' as nota;
import 'calculo_presenca.dart' as presenca;

String verificarAprovacao(double nota1, double nota2, double media, int quantidadePresenca, int cargaHorariaDisciplina, double percentualMinimoPresenca){
  var aprovadoNota = verificarAprovacaoNota(nota1, nota2);
  var aprovadoPresenca = verificarAprovacaoPresenca(quantidadePresenca, cargaHorariaDisciplina, 60);
  var resultado = 'aprovado';
  if(!aprovadoNota) resultado = 'reprovado por nota'; 
  else if(!aprovadoPresenca) resultado = 'reprovado por nota'; 
  return resultado;
}

bool verificarAprovacaoNota(double nota1, double nota2, [double media=0]){
  return (nota.calcularMedia(nota1, nota2) >= media);
}

bool verificarAprovacaoPresenca(int quantidadePresenca, int cargaHorariaDisciplina, double percentualMinimoPresenca){
  return (presenca.calcularPercentualPresenca(quantidadePresenca, cargaHorariaDisciplina) > percentualMinimoPresenca);
}
