# Exemplo Procedural em Dart

## Introdução

Neste tutorial, vamos aprender como criar um projeto Dart no VS Code e executar um código simples com entrada e saída de dados no terminal. O objetivo é demonstrar como utilizar a função `print` para saída de dados e a função `readLineSync` da biblioteca `dart:io` para entrada de dados. Também exploraremos como validar as entradas, tratar erros e realizar operações com strings, como concatenação e interpolação.

### Cuidados com a Nomenclatura

Ao criar o projeto e seus arquivos, é fundamental seguir padrões de nomenclatura consistentes. No Dart e Flutter, recomenda-se o uso de **snake_case** para nomes de arquivos (como `exemplo_precedural.dart`). Para nomes de variáveis e funções, adote o padrão **camelCase** (como `nomeCompleto`), que é amplamente utilizado na linguagem.

### Padrões a Serem Seguidos

1. **Organização e Clareza**: Sempre nomeie suas variáveis e funções de maneira descritiva, para que seu código seja legível. Evite nomes genéricos como `var1`, `temp`, etc.
2. **Indentação e Formatação**: Use uma indentação consistente (geralmente 2 espaços) e sempre formate o código de maneira clara.
3. **Documentação**: Comente seu código quando necessário para explicar trechos mais complexos, especialmente quando for necessário justificar uma escolha ou método específico.

---

## Pré-requisitos

Antes de começar a codificar, vamos garantir que você tenha o ambiente de desenvolvimento adequado configurado.

### 1. Instalar o Plugin Code Runner no VS Code

O plugin **Code Runner** facilita a execução de código no VS Code diretamente no terminal integrado. Para instalar o plugin:

- Abra o VS Code.
- Vá para a aba de extensões (pressione `Ctrl + Shift + X`).
- Pesquise por **Code Runner** e clique em **Instalar**.

### 2. Configurar Code Runner para Aceitar Entrada de Dados no Terminal

Agora, precisamos configurar o Code Runner para que ele execute o código no terminal, permitindo a entrada de dados.

- Vá para as configurações do VS Code (`Ctrl + Shift + P` → "Preferences: Open Settings (JSON)").
- Adicione a seguinte configuração no arquivo de configurações:
  
  ```json
  "code-runner.runInTerminal": true
