# cielo_ecommerce

[![pub package](https://img.shields.io/pub/v/cielo_ecommerce?color=blue)](https://pub.dev/packages/cielo_ecommerce)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QXAGLGQU9LET8&source=url)

Pacote para criar pagamentos usando o SDK da API Cielo e-Commerce. Para mais informações acesse a [`documentação`](https://developercielo.github.io/manual/cielo-ecommerce) oficial da Cielo e-Commerce para desenvolvedores.

Este plug-in permite:
- Transação Simples
- Transação Completa
- Transação com Cartão Tokenizado
- Transação com Análise de Fraude (AF)

## Como usar o cielo_ecommerce
1. Adicione dependência a `pubspec.yaml`

```dart
dependencies:
    cielo_ecommerce: ^1.0.3
```

2. Importar o pacote
```dart
import 'package:cielo_ecommerce/cielo_ecommerce.dart';
```

### Example Transação Simples

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

### Example Tokenizando um Cartão

``` dart
...
    print("Tokenizando cartão....");

     CreditCard cart = CreditCard(
       customerName: "Comprador Teste Cielo",
       cardNumber: "4532117080573700",
       securityCode: "123",
       holder: "Comprador T Cielo",
       expirationDate: "12/2030",
       brand: "Visa",
     );
     try {
       var response = await cielo.tokenizeCard(cart);
       print(response.cardToken);
       print(response.cardNumber);
     } on CieloException catch (e) {
       print(e);
       print(e.message);
       print(e.errors[0].message);
       print(e.errors[0].code);
     }
...
```

### Example com Cartão Tokenizado

``` dart
...
    print("Transação com Cartão Tokenizado");
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
              cardToken: "db62dc71-d07b-4745-9969-42697b988ccb", // Cartão tokenizado
              securityCode: '123', // Código de segurança impresso no verso do cartão
              brand: 'Visa', // Bandeira do cartão
            )
        )
    );

    try{
      var response = await cielo.createSale(sale);
      print('paymentId ${response.payment.paymentId}');
      paymentId = response.payment.paymentId;
      status = response.payment.status;

    } on CieloException catch(e){
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    }
...
```

### Example com Análise de Fraude (AF)

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
      //PRODUCTION
      /*if(response.payment.returnCode == '00'){
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
- *Funções opcionais*
    * getReturn(paymentId) - Função para consulta
    * enableCapture(paymentId) - Função para aprovar a compra
    * enableVoid(paymentId) - Função para cancelar a compra

Consulte o aplicativo de exemplo deste plugin para obter um exemplo completo.
