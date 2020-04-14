# cielo_ecommerce

Pacote para criar pagamentos usando o SDK da API Cielo e-Commerce. Para mais informações acesse a [`documentação`](https://developercielo.github.io/manual/cielo-ecommerce) oficial da Cielo e-Commerce para desenvolvedores.

## Como usar o cielo_ecommerce
Para usar esse plug-in, adicione `cielo_ecommerce` como uma [dependência no seu arquivo pubspec.yaml file](https://flutter.io/platform-plugins/).

Este plug-in permite:
- Transação Simples
- Transação Completa
- Transação com Análise de Fraude (AF)

### Example transação simples

``` dart
import 'package:cielo_ecommerce/cielo_ecommerce.dart';
...
  final CieloEcommerce cielo = CieloEcommerce(
      environment: Environment.SANDBOX,
      merchant: Merchant(
        merchantId: "SEU_MERCHANT_ID",
        merchantKey: "SEU_MERCHANT_KEY",
      ));

  _makePayment() async {

    print("Transação Simples");
    print("Iniciando pagamento....");
    //Objeto de venda
    Sale sale = Sale(
      merchantOrderId: "2020032601", // Numero de identificação do Pedido
      customer: Customer(
        name: "Comprador crédito simples", // Nome do Comprador
      ),
      payment: Payment(
        type: TypePayment.creditCard, // Tipo do Meio de Pagamento
        amount: 9, // Valor do Pedido (ser enviado em centavos)
        installments: 1, // Número de Parcelas
        softDescriptor: "Mensagem", // Descrição que aparecerá no extrato do usuário. Apenas 15 caracteres
        creditCard: CreditCard(
          cardNumber: "4024007153763191", // Número do Cartão do Comprador
          holder: 'Teste accept', // Nome do Comprador impresso no cartão
          expirationDate: '08/2030', // Data de validade impresso no cartão
          securityCode: '123', // Código de segurança impresso no verso do cartão
          brand: 'Visa', // Bandeira do cartão
        ),
      ),
    );

    try {
      var response = await cielo.createSale(sale);

      print('paymentId ${response.payment.paymentId}');

    } on CieloException catch (e) {
      print(e);
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    }
  }
...
```

### Example com análise de fraude (AF)

``` dart
...
    print("Transação com Análise de Fraude (AF)");
    print("Iniciando pagamento....");
    //Objeto de venda
    Sale sale = Sale(
      merchantOrderId: "2020032601", // Numero de identificação do Pedido
      customer: Customer(
        name: "Comprador crédito AF", // Nome do Comprador
        identity: '12345678909', // Número do RG, CPF ou CNPJ do Cliente
        identityType: 'CPF', // Tipo de documento de identificação do comprador (CPF ou CNPJ)
        email: "compradorteste@live.com", // Email do Comprador
        mobile: '5521995760078',
        phone: "552125553669",
      ),
      payment: Payment(
        type: TypePayment.creditCard, // Tipo do Meio de Pagamento
        amount: 9, // Valor do Pedido (ser enviado em centavos)
        currency: "BRL", // Moeda na qual o pagamento será feito (BRL)
        country: "BRA", // Pais na qual o pagamento será feito
        installments: 1, // Número de Parcelas
        interest: 'ByMerchant', // Tipo de parcelamento - Loja (ByMerchant) ou Cartão (ByIssuer)
        capture: false, // Booleano que identifica que a autorização deve ser com captura automática
        authenticate: false, // Define se o comprador será direcionado ao Banco emissor para autenticação do cartão
        softDescriptor: "Mensagem", // Descrição que aparecerá no extrato do usuário. Apenas 15 caracteres
        creditCard: CreditCard(
          cardNumber: "4024007153763191", // Número do Cartão do Comprador
          holder: 'Teste accept', // Nome do Comprador impresso no cartão
          expirationDate: '08/2030', // Data de validade impresso no cartão
          securityCode: '123', // Código de segurança impresso no verso do cartão
          brand: 'Visa', // Bandeira do cartão
          saveCard: "false", // Booleano que identifica se o cartão será salvo para gerar o token (CardToken)
        ),
        fraudAnalysis: FraudAnalysis(
          provider: "cybersource", // Fixo “cybersource”
          sequence: "AuthorizeFirst", // Tipo de Fluxo para realização da análise de fraude
          sequenceCriteria: "OnSuccess", // Critério do fluxo
          captureOnLowRisk: false, // Quando true, captura automática quando o risco de fraude for considerado baixo (Accept)
          voidOnHighRisk: false, // Quando true, o estorno deve acontecer automaticamente quando o risco de fraude for considerado alto
          totalOrderAmount: 9, // Valor total do pedido
          cart: Cart(
              items: [
                Items(
                    name: "ItemTeste", // Nome do Produto
                    quantity: 1, // Quantidade do produto
                    sku: "201411170235134521346", // Código comerciante identificador do produto
                    unitPrice: 9 // Preço unitário do produto
                )
              ]
          ),
        ),
      ),
    );

    try {
      var response = await cielo.createSale(sale);

      print('paymentId ${response.payment.paymentId}');
      print('returnCode ${response.payment.returnCode}');

      //Obs: FraudAnalysisReasonCode só está disponível em PRODUÇÂO
      //SANDBOX
      /*if(response.payment.returnCode == '4' || response.payment.returnCode == '6'){

        print('fraudAnalysisReasonCode ${response.payment.fraudAnalysis.fraudAnalysisReasonCode}');

        if(response.payment.fraudAnalysis.fraudAnalysisReasonCode == 100){
          print('\ncreditCard ${response.payment.fraudAnalysis}\n');
          print('\ncreditCard ${response.payment.fraudAnalysis.replyData}\n');
          print('Operação realizada com sucesso!');
        } else {
          print('Transação não autorizada. Cod.: ${response.payment.fraudAnalysis.fraudAnalysisReasonCode}');
        }
      } else {
        print('Transação não autorizada. Cod.: ${response.payment.returnCode}');
      }*/

      print('Operação realizada com sucesso!');

    } on CieloException catch (e) {
      print(e);
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    }
  }
...
```

Consulte o aplicativo de exemplo deste plugin para obter um exemplo completo.