import 'package:fin_plan/fin_plan/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fin_plan',
      home: LoginScreen(),
    );
  }
}
