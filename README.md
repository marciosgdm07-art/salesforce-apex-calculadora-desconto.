# Calculadora de Descontos — Salesforce Apex

Projeto prático de aprendizagem em **Salesforce Apex**, desenvolvido para exercitar classes, métodos estáticos, estruturas condicionais, tipos `Decimal` e `Boolean`, validação de dados e exceções personalizadas.

> **Projeto educacional.** Este repositório não representa experiência profissional em desenvolvimento Salesforce. A execução dos testes na organização Salesforce deve ser confirmada separadamente.

## Regras de negócio

A classe `calculadorDesconto` disponibiliza o método estático:

```apex
Decimal valorFinal = calculadorDesconto.calcularTotal(valorCompra, cadastroAtivo);
```

- Para cadastro ativo e compra **a partir de R$ 1.000**, desconto de **15%**.
- Para cadastro ativo e compra **a partir de R$ 500 e abaixo de R$ 1.000**, desconto de **10%**.
- Para outros valores não negativos, sem desconto.
- Para cadastro inativo ou `null`, sem desconto.
- Para `valorCompra` negativo ou `null`, lança `ValorInvalidoException`.

## Exemplos

| Valor da compra | Cadastro ativo | Total |
| ---: | :---: | ---: |
| R$ 1.200,00 | Sim | R$ 1.020,00 |
| R$ 750,00 | Sim | R$ 675,00 |
| R$ 300,00 | Sim | R$ 300,00 |
| R$ 1.200,00 | Não | R$ 1.200,00 |

## Arquivos

- `force-app/main/default/classes/calculadorDesconto.cls` — classe Apex original.
- `force-app/main/default/classes/CalculadorDescontoTest.cls` — testes unitários propostos.
- `exemplos/ExecuteAnonymous.apex` — execução manual via Developer Console.

## Como executar no Salesforce Developer Console

1. Em uma organização de desenvolvimento/Playground, abra **Developer Console**.
2. Em **File → New → Apex Class**, crie/compare a classe `calculadorDesconto` com o arquivo deste projeto.
3. Crie a classe de teste `CalculadorDescontoTest` com o conteúdo indicado no repositório.
4. Abra **Test → New Run** e execute `CalculadorDescontoTest`. Confira os resultados.
5. Para ver exemplos manuais, abra **Debug → Open Execute Anonymous Window**, cole o conteúdo de `exemplos/ExecuteAnonymous.apex`, execute e examine o log.

**Observação:** a presença dos arquivos no GitHub não comprova, por si só, execução ou aprovação dos testes no Salesforce.

## Tecnologias

Salesforce · Apex · Salesforce Developer Console · Programação orientada a objetos · Testes unitários

## Autor

Projeto de estudo e portfólio pessoal de Marcio Santos.
