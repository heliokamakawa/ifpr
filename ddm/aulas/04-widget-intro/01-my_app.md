# 📱 Flutter App - Estrutura Inicial com MaterialApp
Ponto de entrada da interface.  
Ele é o primeiro widget da árvore que será renderizado na tela.  

## ✅ Estrutura típica do `main.dart`

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
```

## 🧭 Qual a função do widget Stateless que retorna um `MaterialApp`?

- Organizar melhor o código.  
- Configurar o aplicativo de forma centralizada.  
- Usar o **Material Design**.  
- Facilitar a escalabilidade do app.   



## Organização do código
Responsabilidade: Configuração global.  

## O MaterialApp fornece:
- Tema global (cores, fontes, etc.).  
- Navegação (routes, Navigator).  
- Título do app.  
- Widget inicial (home ou initialRoute).  
- Localização e outras configurações globais.  

## Adoção do Material Design
MaterialApp aplica o Material Design da Google automaticamente, então tudo já vem com a carinha de app Android moderno.  


## 🍎 CupertinoApp no lugar de MaterialApp
✅ Exemplo básico:
```dart
void main() {
  runApp(MyIOSApp());
}

class MyIOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Meu App iOS',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: HomePage(),
    );
  }
}
```
---


