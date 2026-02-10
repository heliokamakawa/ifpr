# Fase 3 – Componentização Orientada a Objeto em Flutter

## Objetivo

Nesta fase, vamos aprofundar a aplicação de **Programação Orientada a Objetos (POO)** para organizar a interface criada na fase anterior em componentes reutilizáveis e legíveis. O foco é estruturar o código com classes que representem widgets personalizados, aplicando boas práticas do Flutter para facilitar manutenção, testes e escalabilidade.

---

## Contexto

Você já possui uma interface de cadastro com vários campos agrupados (dados pessoais, endereço, responsável) gerada inicialmente pela IA e ajustada manualmente. Agora, o desafio é **refatorar esse código** para:

- Eliminar duplicação de código, criando componentes genéricos para campos repetitivos;
- Separar lógica e apresentação em widgets organizados;
- Controlar o estado local de forma adequada, usando `StatefulWidget` apenas quando necessário;
- Manter a legibilidade e facilitar futuras extensões do sistema.

---

## Tópicos e atividades

### 1. Identificar padrões e campos repetitivos

- Campos de texto para nome, sobrenome, e-mail, telefone etc. podem ser transformados em um único widget reutilizável.
- Grupos de campos (ex: endereço, responsável) podem virar widgets que agrupam subcomponentes.
- Avaliar campos booleanos (ex: checkbox “Cadastro ativo”) para decidir se devem ser componentes separados ou incorporados.

### 2. Criar widgets personalizados reutilizáveis

- Criar uma classe `CustomTextField` que encapsula um `TextFormField` com propriedades configuráveis (label, obrigatoriedade, validação básica).
- Criar widgets agrupadores, como `EnderecoForm` e `ResponsavelForm` que organizam seus campos filhos.

### 3. Gerenciar estado local com clareza

- Usar `StatefulWidget` para componentes que precisam manter estado próprio (ex: campos que alteram visual conforme interação).
- Para campos simples, usar `StatelessWidget` e controlar o estado no widget pai, para evitar componentização excessiva.
- Entender quando evitar “over-componentização” para não aumentar complexidade.

### 4. Passagem de dados e comunicação entre widgets

- Aprender a passar dados e callbacks via construtores para manter fluxo unidirecional de dados.
- Controlar valores dos campos via `TextEditingController` e validar nos componentes.
- Exemplo: o widget `EnderecoForm` deve comunicar alterações ao widget pai para manter o modelo de dados consistente.

### 5. Refatorar o código da Fase 2

- Aplicar as técnicas acima para reestruturar o formulário de cadastro.
- Implementar melhorias incrementais, testando a usabilidade e a qualidade do código.
- Documentar as decisões técnicas e apontar ganhos da componentização.

---

## Exercício prático sugerido

1. Usando o código da Fase 2, identifique ao menos 3 campos ou grupos que podem virar widgets reutilizáveis.
2. Crie um widget genérico para campos de texto, que receba label, obrigatoriedade, e função de validação como parâmetros.
3. Crie widgets para agrupar campos relacionados (ex: dados do endereço) que usem o widget genérico para campos de texto.
4. Refatore o formulário principal para usar esses widgets, controlando estado no widget pai.
5. Teste a validação dos campos obrigatórios.
6. Opcional: implemente um campo booleano para “Cadastro ativo”, avaliando se vale a pena criar um componente específico para ele.

---

## Dicas e boas práticas

- **Componentize para reaproveitar e organizar, mas não exagere**: componentes muito pequenos e fragmentados podem dificultar a manutenção.
- Sempre documente o que o componente faz e quais parâmetros recebe.
- Use a composição em Flutter ao invés da herança para reaproveitar funcionalidades.
- Aplique as regras básicas de encapsulamento da POO para manter o código modular e de fácil leitura.
- Considere o padrão “Lift State Up” para passar o estado para cima quando necessário.

---

## Recursos extras

- [Flutter Widget Catalog](https://flutter.dev/docs/development/ui/widgets)
- [State Management Basics](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple)
- [Effective Dart — Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Vídeo aula sobre componentização com POO e Flutter (a ser disponibilizado)

---

**Bora aplicar POO com qualidade e criar código organizado, legível e sustentável!**

