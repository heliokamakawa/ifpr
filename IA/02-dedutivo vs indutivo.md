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
