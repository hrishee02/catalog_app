import 'package:flutter/material.dart';
import 'package:s/core/store.dart';
import 'package:s/pages/cart_page.dart';
import 'package:s/pages/login_page1.dart';
import 'package:s/pages/home_page1.dart';
import 'package:s/utils/routes.dart';
import 'package:s/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
