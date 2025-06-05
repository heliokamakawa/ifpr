# 📐 Flutter — Espaçamento e Alinhamento
## 🧭 Objetivo
Explorar widgets que controlam o espaçamento interno e externo, o alinhamento de conteúdo e a organização visual em layouts Flutter.
Além disso, entender como esses comportamentos se propagam e quais widgets já possuem essas capacidades como parâmetros.

### 1. Padding
O que é?  
O Padding adiciona espaço interno ao redor de um widget filho.  

Exemplo:
```dart
Padding(
 padding: EdgeInsets.all(16.0),
 child: Text('Texto com padding'),
)
```
Explicação:  
Esse exemplo aplica 16 pixels de espaçamento interno em todos os lados do texto. Isso faz com que o conteúdo não fique colado nas bordas do widget pai.  

Propagação para filhos/netos:  
A configuração de padding afeta somente o widget filho imediato. Ou seja, netos e descendentes não herdam esse padding, a não ser que sejam também envoltos em novos widgets de Padding ou similares.  

Observação útil:  
Widgets como TextField, Card, ListTile, ElevatedButton, TextButton, Container e TextFormField muitas vezes já possuem propriedades como contentPadding, padding, margin ou visualDensity para personalizar espaçamento sem precisar criar um Padding manualmente.  

Quando usar:  
Sempre que quiser controlar o espaço entre o conteúdo e sua borda. Ex: textos, botões, ícones, imagens.  

### 2. Align
O que é?  
Align posiciona um widget filho dentro da área disponível, com base em um ponto da tela.  

Exemplo:
```dart
Align(
 alignment: Alignment.bottomRight,
 child: Icon(Icons.star),
)
```

Explicação:  
O ícone será posicionado no canto inferior direito do espaço disponível. Ele ocupará apenas o espaço necessário para o seu conteúdo.  

Propagação:
Align não afeta widgets netos. Ele atua diretamente no seu filho, mas o filho pode ter outros alinhamentos próprios.  

Alternativas com alinhamento embutido:
Widgets como Container, Stack, Column, Row, Center e TextAlign (em Text) permitem alinhar seus filhos diretamente, sem precisar de Align.  

Quando usar:  
Quando você quiser posicionar manualmente um elemento dentro de um espaço maior (ex: ícone no canto da tela).  

### 3. Center
O que é?  
Center é um atalho de Align(alignment: Alignment.center) que centraliza o filho dentro do widget pai.  

Exemplo:  
```dart
Center(
 child: Text('Centralizado'),
)
```

Explicação:  
O texto será exibido no centro do espaço disponível no widget pai. Ele não altera tamanho, apenas posicionamento.  

Observação:  
Esse widget só afeta posicionamento, não adiciona espaçamento extra.  

Alternativas:
Widgets como Container com alignment: Alignment.center, ou Text(text, textAlign: TextAlign.center) também centralizam conteúdo.  

Quando usar:  
Quando você quer destacar ou equilibrar visualmente elementos como títulos, botões centrais ou loading spinners.  

### 4. SizedBox
O que é?  
Cria um espaço fixo entre widgets ou define tamanho fixo para um widget.  

Exemplo (espaçamento):
```dart
SizedBox(
 height: 20,
)


//Exemplo (fixar tamanho):

SizedBox(
 width: 200,
 height: 50,
 child: ElevatedButton(
  onPressed: () {},
  child: Text('Botão'),
 ),
)
```
Explicação:  
No primeiro exemplo, cria um espaço vertical de 20 pixels.  
No segundo, o botão terá tamanho exato de 200x50 pixels.  

Propagação:  
SizedBox afeta apenas o que está diretamente dentro dele. Para elementos netos, é preciso aplicar outros ajustes.  

Alternativas:  
Alguns widgets já têm propriedades width, height ou constraints, como Container, Image, TextField.  

Quando usar:  
Para adicionar espaços entre widgets.  

Para definir dimensões fixas de elementos.  

### 5. Spacer
O que é?  
Um widget que ocupa espaço flexível, útil para organizar elementos em Row ou Column.  

Exemplo:
```dart
Row(
 children: [
  Icon(Icons.menu),
  Spacer(),
  Icon(Icons.search),
 ],
)
```

Explicação:  
O Spacer preenche todo o espaço entre os dois ícones, empurrando um para a esquerda e o outro para a direita.  

Alternativas:  
Em Row e Column, também é possível usar Expanded(child: SizedBox()) para obter o mesmo efeito.  

Quando usar:  
Quando quiser distribuir elementos de forma proporcional ou criar separações adaptativas.  

### 6. Container (com margin e alignment)
O que é?  
Container é um widget versátil que pode definir margem externa, alinhamento interno, tamanho, cor e borda.  

Exemplo:
```dart
Container(
 margin: EdgeInsets.symmetric(horizontal: 20),
 alignment: Alignment.center,
 child: Text('Conteúdo centralizado com margem'),
)
```
Explicação:  
O texto estará centralizado dentro do container, e o próprio container estará afastado 20 pixels das laterais externas.  

Propagação:  
A margem afeta apenas o próprio Container, e o alinhamento vale apenas para o child.  

Alternativas:  
Para margem, pode-se usar Padding no widget pai. Para alinhamento, Align ou Center.    

Quando usar:  
Quando você quer um widget com controle completo sobre layout visual, como blocos, cards ou seções de tela.  

### 🧠 Dicas Importantes
Padding = espaço interno  

Margin (via Container) = espaço externo  

Center, Align, Spacer = posicionamento  

SizedBox = espaço fixo  

Spacer = espaço flexível  

Muitos widgets já têm padding, alignment ou contentPadding como parâmetros! Verifique antes de envolver com outro widget.  

### 🧪 Desafio
Crie um layout com:  

Um Container com margem de 24  

Um Text centralizado com padding de 16  

Dois ícones separados com Spacer dentro de uma Row  


## 📚 Próximo Tema

[Containeres e caixas...](https://github.com/heliokamakawa/aula/blob/main/ddm/aulas/07-layout/04-conteineres.md)




