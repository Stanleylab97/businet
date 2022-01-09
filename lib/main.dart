import 'package:flutter/material.dart';
import 'package:kkiapay_flutter_sdk/kkiapayWebview.dart';
import 'package:businet/success_screen.dart';

void main() {
  runApp(MyApp());
}

void sucessCallback(response, context) {
  Navigator.pop(context);
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => SuccessScreen(
            amount: response['amount'],
            transactionId: response['transactionId'])),
  );
}

final kkiapay = KKiaPay(
    callback: sucessCallback,
    amount: 1,
    sandbox: false,
    data: 'C0246464T9',
    apikey: '0866da3bacd24a50be86e5bed2854c77e80bcfce',
    phone: '97000000',
    name: 'JOHN DOE',
    theme: '#2ba359');

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Kkiapay'),
            centerTitle: true,
          ),
          body: KkiapaySample(),
        ));
  }
}

class KkiapaySample extends StatelessWidget {
  const KkiapaySample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonTheme(
        minWidth: 250.0,
        height: 60.0,
        child: FlatButton(
          color: Color(0xFFE30E25),
          child: Text(
            'Payer maintenant',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => kkiapay),
            );
          },
        ),
      ),
    );
  }
}
