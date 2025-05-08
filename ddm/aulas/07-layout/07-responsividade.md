# Responsividade e Adaptação no Flutter

Layouts devem se adaptar a diferentes telas. Para isso, podemos usar ferramentas como `MediaQuery`, `LayoutBuilder`, `Flexible`, `Expanded`, `FittedBox`, e `FractionallySizedBox`.

Esses widgets ajudam a garantir que o layout se ajuste corretamente a diferentes tamanhos de tela e resoluções.

---

## 1. MediaQuery

**O que é?**

O `MediaQuery` permite obter informações sobre as características da tela, como a largura, altura, densidade de pixels, orientação, etc. Ele fornece dados sobre o ambiente de exibição, permitindo que seu aplicativo saiba como se adaptar a diferentes tamanhos de tela.

**Como usar?**

Você pode usar o `MediaQuery` para determinar o tamanho da tela ou características específicas, como a largura ou altura da tela disponível, e usar essas informações para ajustar o layout.

**Exemplo:**

Imagine que você queira mudar o tamanho de um widget com base na largura da tela. Você pode usar o `MediaQuery` para obter a largura da tela e fazer ajustes:

```dart
double screenWidth = MediaQuery.of(context).size.width;
double containerWidth = screenWidth * 0.8; // O container ocupará 80% da largura da tela
```

**Quando usar?**

- Usar o `MediaQuery` quando precisar adaptar o layout com base em aspectos específicos da tela, como a largura da tela, altura ou a densidade de pixels.

**Explicação do Layout:**  
Usar `MediaQuery` para ajustar a largura ou altura de um widget de acordo com o tamanho da tela ajuda a garantir que seu aplicativo tenha uma boa aparência em dispositivos de diferentes tamanhos, evitando a sobrecarga de um widget ou o espaçamento excessivo em telas grandes.

---

## 2. LayoutBuilder

**O que é?**

O `LayoutBuilder` é um widget que permite construir layouts com base no tamanho **disponível**. Ele fornece o tamanho máximo disponível para o widget pai e permite que você construa o layout do filho com base nesse tamanho.

**Como usar?**

O `LayoutBuilder` recebe um callback com o `constraints` (restrições) do widget pai, que podem ser usadas para construir um layout que se adapta dinamicamente às mudanças no espaço disponível.

**Exemplo:**




```dart
LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth > 600) {
      return Container(color: Colors.blue, width: 300, height: 200); // layout para telas grandes
    } else {
      return Container(color: Colors.red, width: 150, height: 100); // layout para telas pequenas
    }
  },
);
```

**Quando usar?**

- Usar `LayoutBuilder` quando precisar ajustar a aparência de um widget com base no **espaço disponível** no contexto imediato (não a tela inteira, mas o espaço onde o widget está sendo exibido).

**Explicação do Layout:**  
O `LayoutBuilder` permite um controle mais preciso de como o widget será renderizado dependendo do espaço disponível. Isso é útil para designs que precisam se adaptar a diferentes tamanhos de tela ou diferentes orientações (por exemplo, em layouts verticais para telas pequenas e horizontais para telas grandes).

---

## 3. Flexible / Expanded

**O que são?**

- **Flexible** e **Expanded** são widgets usados dentro de contêineres como `Row`, `Column`, e `Flex` para criar layouts flexíveis que podem ocupar o espaço disponível de maneira dinâmica.
  
  - **Expanded**: Faz com que o widget ocupe todo o espaço disponível dentro do widget pai.
  - **Flexible**: Oferece mais controle do que o `Expanded`. Ele permite que você defina uma **proporção** de como o espaço será distribuído entre os widgets filhos.

**Como usar?**

- O `Expanded` ocupa todo o espaço disponível, enquanto o `Flexible` permite definir a flexibilidade com base em uma **proporção** específica.

**Exemplo:**

```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.blue)),
    Flexible(flex: 2, child: Container(color: Colors.green)),
  ],
);
```

**Quando usar?**

- Usar `Expanded` quando um widget precisar ocupar todo o espaço disponível.
- Usar `Flexible` quando você quiser distribuir o espaço de maneira proporcional entre widgets filhos.

**Explicação do Layout:**  
Usar `Expanded` ou `Flexible` ajuda a distribuir o espaço entre widgets em layouts dinâmicos. O `Expanded` ocupa toda a área disponível, enquanto o `Flexible` oferece um controle mais preciso de como o espaço será distribuído, sendo útil quando há diferentes widgets que precisam dividir o mesmo espaço de maneira proporcional.

---

## 4. FittedBox

**O que é?**

O `FittedBox` ajusta o tamanho de seu filho para se ajustar ao seu próprio tamanho ou à sua área disponível, aplicando um fator de escalonamento de acordo com o espaço que ele ocupa.

**Como usar?**

- O `FittedBox` pode ser útil quando você quer ajustar o conteúdo para que ele se ajuste de forma eficiente dentro de um espaço limitado.

**Exemplo:**

```dart
FittedBox(
  fit: BoxFit.contain,
  child: Icon(Icons.star, size: 100),
);
```

**Quando usar?**

- Usar o `FittedBox` quando precisar ajustar o tamanho de um widget para se adequar a um espaço, sem distorcer a proporção ou a qualidade.

**Explicação do Layout:**  
O `FittedBox` ajusta o tamanho do widget filho para que ele se encaixe de forma otimizada no espaço pai. Ele é útil quando o widget pode ser redimensionado para se ajustar ao layout de forma eficiente, como no caso de ícones ou imagens.

---

## 5. FractionallySizedBox

**O que é?**

O `FractionallySizedBox` redimensiona um widget filho em relação a uma fração do tamanho disponível no seu widget pai.

**Como usar?**

- Você pode usar o `FractionallySizedBox` para especificar que um widget deve ocupar uma porcentagem do espaço disponível no widget pai.

**Exemplo:**
```dart
FractionallySizedBox(
  alignment: Alignment.center,
  widthFactor: 0.5,
  child: Container(color: Colors.orange),
);
```

**Quando usar?**

- Usar `FractionallySizedBox` quando precisar que um widget ocupe uma fração específica do espaço disponível no seu layout.

**Explicação do Layout:**  
O `FractionallySizedBox` ajuda a ajustar o tamanho de um widget em relação a uma fração do espaço disponível, tornando-o útil para layouts que precisam ser escalonados de forma precisa em diferentes dispositivos e resoluções.

---


