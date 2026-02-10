# 🧠 Dedutivo vs. Indutivo na Programação  
### 📌 Exemplo prático e comentado com Java

## 🔍 Problema
Queremos detectar se um **e-mail é SPAM**, com base em dois critérios:
- Se contém a palavra **"promoção"**
- Quantos **links** (`http`) ele possui

Vamos resolver isso com duas abordagens:
- **Dedutiva**: regras fixas criadas pelo programador
- **Indutiva**: modelo treinado com dados que aprende padrões

---

## ✅ Abordagem 1: Dedutiva (baseada em regras fixas)

### 💡 Como funciona?
Regras são **explicitamente programadas**.  
Se o e-mail contém **"promoção"** **e** tem **mais de 3 links**, ele é considerado SPAM.

### 💻 Código Java comentado

```java
public class SpamDetectorDedutivo {

    public static boolean ehSpam(String textoEmail) {
        // Verifica se o texto contém a palavra "promoção"
        boolean contemPromocao = textoEmail.toLowerCase().contains("promoção");

        // Conta quantas vezes "http" aparece no texto (simulando links)
        int numeroDeLinks = contarOcorrencias(textoEmail.toLowerCase(), "http");

        // Regra fixa: se contém "promoção" e tem mais de 3 links, é SPAM
        if (contemPromocao && numeroDeLinks > 3) {
            return true;
        }
        return false;
    }

    // Função auxiliar para contar quantas vezes uma palavra aparece no texto
    public static int contarOcorrencias(String texto, String palavra) {
        int count = 0;
        int index = 0;

        while ((index = texto.indexOf(palavra, index)) != -1) {
            count++;
            index += palavra.length();
        }

        return count;
    }

    public static void main(String[] args) {
        String email = "Promoção imperdível! http://link1.com http://link2.com http://link3.com http://link4.com";
        boolean resultado = ehSpam(email);

        System.out.println("É spam? " + resultado);
    }
}
```

## 🤖 Abordagem 2: Indutiva (baseada em aprendizado e pesos)
### 💡 Como funciona?

Simulamos uma IA simples, treinada com dados reais. O modelo aprendeu que:

A presença da palavra "promoção" tem peso 2.0

Cada link tem peso 0.5

O modelo aplica um bias de -3.5 como ajuste

Ele calcula um "score" com a fórmula:

    score = (x1 * w1) + (x2 * w2) + bias

Se score >= 0, é SPAM.

```java
public class SpamDetectorIndutivo {

    // Pesos aprendidos durante o treinamento
    static double w1 = 2.0;    // peso para presença de "promoção"
    static double w2 = 0.5;    // peso para número de links
    static double bias = -3.5; // ajuste base

    public static boolean ehSpam(String textoEmail) {
        // Transforma os dados em entradas (features)
        int x1 = textoEmail.toLowerCase().contains("promoção") ? 1 : 0;
        int x2 = contarOcorrencias(textoEmail.toLowerCase(), "http");

        // Aplica a fórmula do modelo
        double score = (x1 * w1) + (x2 * w2) + bias;

        // Retorna se o e-mail é spam com base no score
        return score >= 0;
    }

    // Função auxiliar para contar quantas vezes uma palavra aparece no texto
    public static int contarOcorrencias(String texto, String palavra) {
        int count = 0;
        int index = 0;

        while ((index = texto.indexOf(palavra, index)) != -1) {
            count++;
            index += palavra.length();
        }

        return count;
    }

    public static void main(String[] args) {
        String email = "Promoção especial! http://link1.com http://link2.com http://link3.com http://link4.com";
        boolean resultado = ehSpam(email);

        System.out.println("É spam? " + resultado);
    }
}
```

## 📊 Comparação Didática Final

| Aspecto                    | Dedutivo (Regras fixas)           | Indutivo (Modelo aprendido)         |
|---------------------------|----------------------------------|------------------------------------|
| Quem define as decisões?   | O programador                    | O modelo treinado                  |
| Estrutura usada            | if/else                         | Matrizes de pesos + equações       |
| Transparência (explicável)?| Alta (totalmente rastreável)    | Média/baixa (depende do modelo)    |
| Flexibilidade              | Baixa (não aprende)              | Alta (adapta-se com dados novos)   |
| Uso ideal                  | Sistemas críticos e previsíveis  | Tarefas com ambiguidade e padrões  |


## ✅ Conclusão
Dedutivo: fácil de entender, previsível, ótimo para tarefas onde o erro é inaceitável.

Indutivo: mais próximo do cérebro humano — aprende com exemplos, se adapta, mas pode cometer erros com confiança.

