# Manual de Engenharia para Fintechs — Edição em português com exemplos do Pix

Tradução para o português brasileiro do **Fintech Engineering Handbook**, de Voytek Pitula, acrescida de exemplos do
**Pix**, o sistema de pagamentos instantâneos do Banco Central do Brasil. Tradução e adaptação por **Társis Toledo**.

> Padrões para construir software que lida com dinheiro.

## O que esta edição acrescenta

- Tradução integral do manual para o português (mantendo termos técnicos consagrados em inglês).
- Caixas **"No Pix"** ao longo dos capítulos, ligando cada padrão (idempotência, reserva de fundos, conciliação,
  webhooks, estornos, imutabilidade, etc.) ao arranjo brasileiro.
- Um **glossário do Pix** no Apêndice A (SPI, DICT, chave Pix, E2EID, MED, e mais).
- Um novo **Fluxo 4: Uma transferência Pix** de ponta a ponta no Apêndice B.

Os exemplos do Pix baseiam-se nos normativos públicos do Banco Central do Brasil. Nada aqui é aconselhamento jurídico,
de compliance ou financeiro; em caso de dúvida, a fonte normativa oficial do BCB prevalece.

## Atribuição e licença

Obra original: [**Fintech Engineering Handbook**](https://github.com/Krever/fintech-engineering-handbook), © Voytek
Pitula, licenciada sob [Creative Commons Atribuição 4.0 Internacional (CC BY 4.0)](LICENSE).

Esta é uma **adaptação** por **Társis Toledo** (tradução para o português com adição de exemplos do Pix). Alterações foram
feitas em relação ao original. A adaptação é distribuída sob a mesma licença **CC BY 4.0** — você pode compartilhar e
adaptar livremente, inclusive comercialmente, desde que dê o crédito apropriado, indique as alterações e não sugira que
o autor original o endossa.

Metodologia: tradução e exemplos assistidos por IA (LLM) e revisados por humano (verificação contra os normativos do
BCB e revisão técnico-contábil).

## Como gerar (build)

O livro é um documento único do [Quarto](https://quarto.org/) (`index.qmd`). Para renderizar localmente:

```sh
quarto render        # gera o site em ./public (HTML, PDF via Typst, EPUB)
quarto preview       # pré-visualização com recarga automática
```
