# 📦 Flutter — Widgets Contêineres e Caixas

## 🧭 Objetivo  
Explorar os **widgets contêineres e caixas** no Flutter, que são fundamentais para definir o layout, aparência e comportamento de outros widgets. Vamos ver como eles funcionam, quando utilizá-los e como configurar corretamente seu uso.

---

## 1. Container

### O que é?  
O `Container` é um dos widgets mais usados no Flutter. Ele é um **contêiner genérico** que pode conter qualquer tipo de widget e permite personalizar várias propriedades como tamanho, bordas, espaçamento, entre outras.

### Exemplo:

```dart
Container(  
 width: 200,  
 height: 100,  
 color: Colors.blue,  
 child: Center(child: Text('Dentro do Container'))  
)
```

### Explicação:  
Neste exemplo, temos um `Container` com largura de **200 pixels** e altura de **100 pixels**. A cor de fundo é azul e o texto está centralizado dentro do contêiner.

### Quando usar:  
Use o `Container` quando precisar de um widget que **agrupa outros widgets** e permita modificar suas propriedades visuais, como tamanho, cor, borda e padding.

---

## 2. Card

### O que é?  
O `Card` é um tipo específico de **contêiner com bordas arredondadas e sombra**, geralmente utilizado para destacar conteúdos em aplicativos, como listas de itens, imagens ou grupos de informações.

### Exemplo:

```dart
Card(  
 elevation: 4,  
 margin: EdgeInsets.all(8),  
 child: Padding(  
  padding: EdgeInsets.all(16),  
  child: Text('Este é um Card')  
 ),  
)
```

### Explicação:  
O `Card` tem uma **sombra leve** (definida pela propriedade `elevation`) e uma **margem de 8 pixels** ao redor. O texto dentro do `Card` está com **padding de 16 pixels** para garantir que não fique colado nas bordas.

### Quando usar:  
Use o `Card` quando precisar de um **widget visualmente destacado**, que pode conter texto, imagens ou outros widgets, com um efeito de profundidade através da sombra.

---

## 3. BoxDecoration

### O que é?  
`BoxDecoration` é utilizado para **decorar containers**, com bordas, sombras, gradientes e outros efeitos visuais. Ele é comumente passado como parâmetro para o `Container` através da propriedade `decoration`.

### Exemplo:

```dart
Container(  
 width: 200,  
 height: 100,  
 decoration: BoxDecoration(  
  color: Colors.green,  
  borderRadius: BorderRadius.circular(12),  
  boxShadow: [  
   BoxShadow(  
    color: Colors.black.withOpacity(0.2),  
    blurRadius: 8,  
    offset: Offset(0, 4)  
   ),  
  ],  
 ),  
 child: Center(child: Text('Com BoxDecoration'))  
)
```

### Explicação:  
Neste exemplo, o `Container` tem a cor de fundo verde, **bordas arredondadas** com raio de **12 pixels**, e uma **sombra** com desfoque de **8 pixels**. O texto é centralizado.

### Quando usar:  
Use `BoxDecoration` quando quiser adicionar **efeitos visuais sofisticados** em seu contêiner, como gradientes, bordas arredondadas, sombreamento, entre outros.

---

## 4. ConstrainedBox

### O que é?  
O `ConstrainedBox` é utilizado para impor **restrições de tamanho** a um widget, como largura e altura mínimas ou máximas, sem alterar o layout do widget filho.

### Exemplo:

```dart
ConstrainedBox(  
 constraints: BoxConstraints(  
  minWidth: 150,  
  maxWidth: 250,  
  minHeight: 50,  
  maxHeight: 100,  
 ),  
 child: Container(  
  color: Colors.purple,  
  child: Center(child: Text('Dentro do ConstrainedBox')),  
 ),  
)
```

### Explicação:  
O `ConstrainedBox` impõe que o widget filho (um `Container` neste caso) tenha um **tamanho mínimo** de **150 pixels de largura** e **50 pixels de altura**, e um **tamanho máximo** de **250 pixels de largura** e **100 pixels de altura**.

### Quando usar:  
Use `ConstrainedBox` quando precisar **limitar o tamanho de um widget** dentro de uma área específica, mas sem definir explicitamente o seu tamanho.

---

## 5. AspectRatio

### O que é?  
O `AspectRatio` é um widget que permite definir uma **proporção de aspecto fixa** para um widget, ou seja, a relação entre largura e altura.

### Exemplo:

```dart
AspectRatio(  
 aspectRatio: 16 / 9,  
 child: Container(  
  color: Colors.orange,  
  child: Center(child: Text('AspectRatio 16:9')),  
 ),  
)
```

### Explicação:  
O `AspectRatio` garante que o `Container` tenha uma proporção de **16:9** (16 unidades de largura para cada 9 unidades de altura), independentemente do tamanho disponível. O texto está centralizado dentro do `Container`.

### Quando usar:  
Use `AspectRatio` quando precisar garantir que um widget tenha uma **proporção específica**, como vídeos ou imagens, mantendo as dimensões ajustáveis automaticamente.

---

## 🧠 Dicas Importantes

- **Container** é o widget mais versátil para layout, usado para controlar dimensões, espaçamento e aparência.
- **Card** é ótimo para elementos de UI visualmente destacados, com sombra e bordas arredondadas.
- **BoxDecoration** permite personalizar a decoração de widgets, como gradientes e sombras.
- **ConstrainedBox** serve para **limitar tamanhos** sem afetar o layout natural do widget filho.
- **AspectRatio** é ideal para **definir proporções fixas** entre largura e altura.

---

## 🧪 Desafio

Crie uma tela com os seguintes elementos:
1. Um `Card` com um título centralizado e uma borda arredondada.
2. Um `Container` com `BoxDecoration` e sombra.
3. Um `ConstrainedBox` para um texto que tenha uma largura mínima de 150 e altura mínima de 50.
4. Um `AspectRatio` para exibir uma imagem com proporção 16:9.

---

## 📚 Próximo Tema

[Containeres e caixas...](https://github.com/heliokamakawa/aula/blob/main/ddm/aulas/07-layout/04-conteineres.md)
