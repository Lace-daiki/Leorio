import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:leorio/homepage.dart';
import 'package:leorio/screens/cart.dart';
import 'package:leorio/screens/checkout.dart';
import 'package:leorio/screens/pages/reciepts/credit_reciepts.dart';
import 'package:leorio/screens/pages/reciepts/debit_reciepts.dart';
import 'package:leorio/screens/pages/transactions_page.dart';
import 'package:leorio/screens/pages/transfers/sendfooduser/senddial_pad.dart';
import 'package:leorio/widgets/paymentdial_pad.dart';

import 'screens/home.dart';
import 'screens/pages/transfers/receivebank_payment.dart';
import 'screens/pages/transfers/receivepayment.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodApp',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
