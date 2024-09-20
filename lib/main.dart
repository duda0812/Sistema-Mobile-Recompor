import 'package:app/telas/comp_terra.dart';
import 'package:app/telas/compostagem_sig.dart';
import 'package:app/telas/criar_conta.dart';
import 'package:app/telas/habitos.dart';
import 'package:app/telas/telainicial.dart';
import 'package:flutter/material.dart';
import 'package:app/telas/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Comp_terra()
    );
  }
}