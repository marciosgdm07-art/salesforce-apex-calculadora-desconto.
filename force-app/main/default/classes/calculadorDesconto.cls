public class calculadorDesconto {

    public class ValorInvalidoException extends Exception {}

    public static Decimal calcularTotal(
        Decimal valorCompra,
        Boolean cadastroAtivo
    ) {

        // Verifica se o valor da compra é válido
        if (valorCompra == null || valorCompra < 0) {
            throw new ValorInvalidoException(
                'O valor da compra deve ser zero ou positivo.'
            );
        }

        Decimal desconto = 0;

        // Verifica se o cliente está ativo
        if (cadastroAtivo == true) {

            if (valorCompra >= 1000) {
                desconto = 0.15;
            } else if (valorCompra >= 500) {
                desconto = 0.10;
            }
        }

        // Calcula o valor final
        Decimal valorFinal =
            valorCompra * (1 - desconto);

        return valorFinal;
    }
}
