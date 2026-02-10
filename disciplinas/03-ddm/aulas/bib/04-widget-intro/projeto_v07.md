# 📚 Fase 07 – Componentização dos Botões do Menu em Classe

## 🎯 Objetivo
Demonstrar como aplicar **Programação Orientada a Objetos (POO)** no Flutter para criar widgets reutilizáveis por meio da **componentização com classes**. Essa prática permite separar a lógica de construção de componentes, tornando o código mais **limpo, reutilizável e organizado**.

---

## 🧠 Conceitos Reforçados
- Criação de widgets personalizados por meio de **classes**.
- Uso de **construtores** com parâmetros `required`.
- Importância da **POO para reutilização de código**.
- Diferença entre componentizar com **método** (fase 06) e com **classe** (fase 07).
- Aprendizagem ativa: **não copiar, mas sim criar e praticar**.

---

## 🧩 Estratégia
Diferente da Fase 06, aqui criamos uma **classe personalizada** (`WidgetBotaoNavegar`) para representar o botão. Essa classe pode ser reutilizada em qualquer parte do projeto, ao invés de estar limitada a uma única classe como era o caso do método.

### ✨ Vantagens:
- Redução de repetição de código.
- Reaproveitamento em **múltiplas telas**.
- Código mais limpo, organizado e sem ruído visual.

---

## ✅ Exemplo de código:

### Classe do botão reutilizável:
```dart
import 'package:flutter/material.dart';

class WidgetBotaoNavegar extends StatelessWidget {
  final String rotulo;
  final String rota;
  final BuildContext context;

  const WidgetBotaoNavegar({
    super.key,
    required this.rota,
    required this.rotulo
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(this.context).pushNamed(rota);
      },
    );
  }
}


//Uso dentro de WidgetMenu:
import 'package:flutter/material.dart';
import 'package:widget_intro/componentes/widget_botao_navegar.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetBotaoNavegar(rota: '/estado', rotulo: 'Estado'),
        WidgetBotaoNavegar( rota: '/cidade', rotulo: 'Cidade'),
        WidgetBotaoNavegar( rota: '/pessoa', rotulo: 'Pessoa'),
      ],
    );
  }
}
```


## 🔍 Diferença entre método e classe
- Critério	Método (Fase 06)	Classe (Fase 07).  
- Alcance	Local à classe	Reutilizável em todo o projeto.  
- Flexibilidade	Limitado ao contexto do método	Mais versátil e modular.  
- Organização	Mais simples para pequenos casos	Mais organizado para projetos maiores.  
- POO	Uso parcial	Uso completo de orientação a objetos.  

## 💡 Dica para o aluno
- Copiar o código do professor pode parecer uma solução rápida, mas não ensina de verdade.  
- A única forma de aprender é criar a sua própria solução, passar pelos desafios e erros. É nesse caminho que a compreensão real acontece.  

## 🛠️ Exercício sugerido  
Crie um novo botão de navegação com a rota /empresa e o texto Empresa. Utilize a mesma classe WidgetBotaoNavegar.  
