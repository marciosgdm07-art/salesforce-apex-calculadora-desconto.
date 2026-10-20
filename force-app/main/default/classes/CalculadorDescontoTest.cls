@IsTest
private class CalculadorDescontoTest {
    @IsTest
    static void testaDescontosEValoresLimite() {
        System.assertEquals(1020, calculadorDesconto.calcularTotal(1200, true));
        System.assertEquals(850, calculadorDesconto.calcularTotal(1000, true));
        System.assertEquals(899.10, calculadorDesconto.calcularTotal(999, true));
        System.assertEquals(450, calculadorDesconto.calcularTotal(500, true));
        System.assertEquals(499, calculadorDesconto.calcularTotal(499, true));
        System.assertEquals(675, calculadorDesconto.calcularTotal(750, true));
        System.assertEquals(0, calculadorDesconto.calcularTotal(0, true));
    }

    @IsTest
    static void testaCadastroInativoENulo() {
        System.assertEquals(1200, calculadorDesconto.calcularTotal(1200, false));
        System.assertEquals(1200, calculadorDesconto.calcularTotal(1200, null));
    }

    @IsTest
    static void testaEntradasInvalidas() {
        Boolean capturouNegativo = false;
        try {
            calculadorDesconto.calcularTotal(-1, true);
        } catch (calculadorDesconto.ValorInvalidoException e) {
            capturouNegativo = true;
        }
        System.assertEquals(true, capturouNegativo);

        Boolean capturouNulo = false;
        try {
            calculadorDesconto.calcularTotal(null, true);
        } catch (calculadorDesconto.ValorInvalidoException e) {
            capturouNulo = true;
        }
        System.assertEquals(true, capturouNulo);
    }
}
