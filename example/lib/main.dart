
import 'package:cielo_ecommerce/cielo_ecommerce.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
var paymentId;
int? status = 0;
var enableAction;
var returnMessage;

class _MyHomePageState extends State<MyHomePage> {
  final CieloEcommerce cielo = CieloEcommerce(
      environment: Environment.sandbox,
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
      var response = await (cielo.createSale(sale));

      print('paymentId ${response!.payment!.paymentId}');
      paymentId = response.payment!.paymentId;
      status = response.payment!.status;

      /*//Opcional
      //Habilitar aprovação ou cancelamento automaticamente dependendo do resultado do ReturnCode
      if(response.payment.returnCode == '00'){
        print('Transação autorizada.');
        enableAction = await cielo.enableCapture(paymentId);
        print(enableAction.toJson());
        status = enableAction.status;
      } else {
        print('Transação não autorizada.');
        enableAction = await cielo.enableVoid(paymentId);
        print(enableAction.toJson());
        status = enableAction.status;
      }*/

      setState(() {});

    } on CieloException catch (e) {
      print(e);
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    }

/*
    print("Iniciando pagamento tokenizado....");
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
*/

/*
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
      //if(response.payment.returnCode == '00'){
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
*/

/*
    print("Operação por Boleto");
    print("Gerando boleto....");
    //Objeto de venda
    Sale sale = Sale(
      merchantOrderId: "2020032601", // Numero de identificação do Pedido
      customer: Customer(
        name: "Comprador crédito simples", // Nome do Comprador
        identity: "12345678909", // Número do CPF
        address: Address(
          street: "Avenida Marechal Câmara", // Endereço do Comprador.
          number: "160", // Número do endereço do Comprador.
          complement: "Sala 934",
          zipCode: "22750012", // CEP do endereço do Comprador.
          district: "Centro", // Bairro do Comprador.
          city: "Rio de Janeiro", // Cidade do endereço do Comprador.
          state: "RJ", // Estado do endereço do Comprador.
          country: "BRA" // Pais do endereço do Comprador.
        )),
      payment: Payment(
        type: TypePayment.boleto, // Tipo do Meio de Pagamento
        amount: 10, // Valor do Pedido (ser enviado em centavos)
        provider: "bradesco2", // Banco (A API Aceita apenas boletos Bradesco e Banco do Brasil).
        address: "Rua Teste", // Nome do Cedente.
        boletoNumber: "123", // Número do Boleto enviado pelo lojista. Usado para contar boletos emitidos (“NossoNumero”).
        assignor: "Empresa Teste",
        demonstrative: "Desmonstrative Teste", // Texto de Demonstrativo.
        expirationDate: "5/1/2015", // Data de expiração do Boleto. Ex. 2020-12-31
        identification: "11884926754", // Documento de identificação do Cedente.
        instructions: "Aceitar somente até a data de vencimento, após essa data juros de 1% dia.", // Instruções do Boleto.
      ),
    );

    try {
      var response = await cielo.createSale(sale);

      print('paymentId ${response.payment.paymentId}');
      print('payment ${response.payment.toJson()}');
      print('url do boleto ${response.payment.url}');
      print('link de consulta ${response.payment.links[0].href}');

      paymentId = response.payment.paymentId;
      status = response.payment.status;

      setState(() {});

    } on CieloException catch (e) {
      print(e);
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    }
*/
  }

  @override
  Widget build(BuildContext context) {
    if(status == 0){
      returnMessage = 'Aguardando atualização de status';
    } else if(status == 1){
      returnMessage = 'Pagamento apto a ser capturado ou definido como pago';
    } else if(status == 2){
      returnMessage = 'Pagamento confirmado e finalizado';
    } else if(status == 10){
      returnMessage = 'Pagamento cancelado';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Status: $status - $returnMessage',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
                child: Text('Consultar', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () async {
                  print('Consultar');
                  try {

                    // Retorna Sale com dados da consulta
                    enableAction = await cielo.getReturn(paymentId);

                    // Dá o resultado completo da consulta
                    print(enableAction.toJson());

                    // Atualização do status da compra
                    status = enableAction.toJson()['Payment'].toJson()['Status'];

                    setState(() {});

                  } on CieloException catch (e) {
                    print(e);
                    print(e.message);
                    print(e.errors[0].message);
                    print(e.errors[0].code);
                  }
                }),
            ElevatedButton(
              child: Text('Aprovar', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () async {
                print('Aprovar');
                try {

                  enableAction = await cielo.enableCapture(paymentId);
                  status = enableAction.status;

                  setState(() {});

                } on CieloException catch (e) {
                  print(e);
                  print(e.message);
                  print(e.errors[0].message);
                  print(e.errors[0].code);
                }
            }),
            ElevatedButton(
                child: Text('Cancelar', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () async {
                  print('Cancelar');
                  try {

                    enableAction = await cielo.enableVoid(paymentId);
                    status = enableAction.status;
                    setState(() {});

                  } on CieloException catch (e) {
                    print(e);
                    print(e.message);
                    print(e.errors[0].message);
                    print(e.errors[0].code);
                  }
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makePayment,
        tooltip: 'Increment',
        child: Icon(Icons.payment),
      ),
    );
  }
}
