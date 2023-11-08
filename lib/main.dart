import 'package:app/auth/login_or_register.dart';
import 'package:app/firebase_options.dart';
import 'package:app/pages/intro_page.dart';
import 'package:app/pages/cart_page.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/register_page.dart';
import 'package:app/pages/shop_page.dart';
import 'package:app/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginRegister(),
      theme: lightMode,
      routes: {
        '/login_page': (context) => LoginPage(),
        '/register_page': (context) => RegisterPage(),
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
