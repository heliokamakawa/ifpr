import 'package:test/test.dart';
/* 1) Em que contexto deve-se utilizar uma variável com tipo de inferência e o nomeado? Explique o objetivo da mudança drástica que ocorreu na versão 2.12 do Dart?
R: Definimos uma variável com inferência de tipo quando há uma atribuição de tipo explícito.  Exemplo: var nome = 'Carlos';
Na declaração de uma variável, se a atribuição não há um tipo claro ou mesmo não há atribuição recomenda-se a declaração explícita do tipo para garantir o tipo da variável. Exemplo: String nome; → garantimos que nome será uma String.
A partir da versão 2.12 do Dart, foi implementada o null safery, no qual, por padrão, as variáveis não podem ser nulas, dificuldade erros com valores nulos. 
*/

/* 2) Em uma única função pode-se definir parâmetros posicionais e nomeados? Por padrão, o parâmetro nomeado é obrigatório ou opcional? Exemplifique por meio de um código em que caso pode-se definir parâmetros nomeados opcionais e obrigatórios. 
R: É possível definir parâmetros posicionais e nomeados em uma única função. Por padrão o parâmetro nomeado é opcional.
*/
double calcularDiaria({double horasTrabalhadas=8, required double valorPagoHora, required Function(double) calcularHoraExtra}){
  var totalDiaria = horasTrabalhadas * valorPagoHora;
  return totalDiaria;
}

// 3)	Exemplifique por meio de código o uso correto de uma função anônima. Implemente todo código necessário.

double calcularDiariaComBonus({double horasTrabalhadas=8, required double valorPagoHora, required Function calcularBonus}){
  var valorDiaria = horasTrabalhadas * valorPagoHora;
  var bonus = calcularBonus(horasTrabalhadas);
  var valorDiariaComBonus =  valorDiaria + bonus;
  return valorDiariaComBonus;
}
/*
4) O Índice de Massa Corporal (IMC) é uma medida bastante difundida, com suas faixas de baixo peso, peso normal, sobrepeso e obesidade. 
O que nem todo mundo sabe é que existe uma forma diferente de classificar o resultado para pessoas com mais de 60 anos de idade. 
O cálculo do peso ideal é feito da mesma forma para todas as faixas etárias e utiliza o peso e a altura: divide-se o peso (em quilos) pela altura (em metros) ao quadrado.  
Devido a composição corporal dos mais velhos, na faixa etária a partir dos 60 anos pode acontecer uma redução da altura devido à compressão vertebral, à perda do tônus muscular e a alterações posturais. 
No Brasil, o Ministério da Saúde adota e recomenda o chamado padrão de Lipschitz, no qual, os valores: abaixo de 21,9 são considerados baixo peso; entre 22 e 26,9, o peso está adequado; e a partir de 27, a pessoa tem sobrepeso. 
Para adultos com menos de 60 anos, o Ministério da Saúde adota o padrão recomendado pela OMS (Organização Mundial da Saúde) desde 1997. 
Por ele, IMC abaixo de 18,4 é tido como baixo; entre 18,5 e 24,9, adequado; de 25 a 29,9, sobrepeso; acima de 30, obesidade. 
Diante do exposto, faça todas as implementações necessárias.
*/

double calcularIMC({required double alturaEmMt,required double pesoEmKl}){
  if(alturaEmMt < 0.5 || alturaEmMt > 2.8) throw Exception('altura inválida');
  if(pesoEmKl < 0 || pesoEmKl > 200)throw Exception('peso inválido');
  final double IMC = pesoEmKl / (alturaEmMt * alturaEmMt);
  return IMC; 
}

String classificarPesoLipschitz({required double IMC}){
  if(IMC < 1) throw Exception('IMC inválido.');
  else if(IMC < 21.9) return 'baixo peso';
  else if(IMC < 27) return 'adequado';
  else return 'sobrepeso';
}

String classificarPesoOMS({required double IMC}){
  if(IMC < 1)throw Exception('IMC inválido.');
  else if(IMC < 18.4) return 'baixo peso';
  else if(IMC < 25) return 'adequado';
  else if(IMC < 30) return 'sobrepeso';
  else return 'obesidade';
}

String classificarPeso({required double alturaEmMt,required double pesoEmKl, required int idade}){
  final double IMC = calcularIMC(alturaEmMt: alturaEmMt, pesoEmKl: pesoEmKl);
  if(idade > 0 && idade < 60) return classificarPesoOMS(IMC: IMC);
  else if (idade >= 60) return classificarPesoLipschitz(IMC: IMC);
  else throw Exception('IMC inválido.');
}

void main() {
  var totalDiaria = calcularDiariaComBonus(valorPagoHora: 5.0, calcularBonus: (horas){
    var salarioBase = 1500.00;
    var horasBaseMes = 220;
    var valorBaseHora = salarioBase / horasBaseMes;
    var valorBaseBonus = valorBaseHora * 0.5;
    var bonus = horas * valorBaseBonus;
    return bonus;
  });
  print(totalDiaria);

  //teste
  group('teste da função calcularIMC', (){
    test('imc deve apresentar 26.54320987654321 ', () {
      expect(calcularIMC(alturaEmMt: 1.80,pesoEmKl: 86), 26.54320987654321);
    });
    test('peso negativo - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: 1.80,pesoEmKl: -10), throwsException);
    });
    test('peso fora do limite - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: 1.80,pesoEmKl: 201), throwsException);
    });
    test('altura negativa - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: -1.80,pesoEmKl: 80), throwsException);
    });
    test('altura fora do limite - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: 3,pesoEmKl: 80), throwsException);
    });
  });
  
  group('teste da função classificarPesoLipschitz', (){
    test('classificação deve apresentar baixo peso', () {
      expect(classificarPesoLipschitz(IMC: 20), 'baixo peso');
    });
    test('classificação deve apresentar adequado', () {
      expect(classificarPesoLipschitz(IMC: 26), 'adequado');
    });
    test('classificação deve apresentar sobrepeso', () {
      expect(classificarPesoLipschitz(IMC: 28), 'sobrepeso');
    });
    test('classificação deve gerar exception', () {
      expect(()=>classificarPesoLipschitz(IMC:-10), throwsException);
    });
  });

  group('teste da função classificarPesoOMS', (){
    test('classificação deve apresentar baixo peso', () {
      expect(classificarPesoOMS(IMC: 18), 'baixo peso');
    });
    test('classificação deve apresentar adequado', () {
      expect(classificarPesoOMS(IMC: 24), 'adequado');
    });
    test('classificação deve apresentar sobrepeso', () {
      expect(classificarPesoOMS(IMC: 28), 'sobrepeso');
    });
    test('classificação deve apresentar obesidade', () {
      expect(classificarPesoOMS(IMC: 31), 'obesidade');
    });
    test('classificação deve gerar exception', () {
      expect(()=>classificarPesoOMS(IMC:-10), throwsException);
    });
  });
}

