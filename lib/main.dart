import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:leorio/screens/Vendor_page.dart';
import 'package:leorio/screens/cart.dart';
import 'package:leorio/screens/checkout.dart';
import 'package:leorio/screens/food_menu.dart';

import 'screens/home.dart';

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
      home: Home(),
    );
  }
}
