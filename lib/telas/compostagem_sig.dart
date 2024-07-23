import 'package:flutter/material.dart';

class compostagem_sig extends StatelessWidget {
  const compostagem_sig({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image:  AssetImage("lib/imagens/fundo.png"),
            fit: BoxFit.cover
            ),
            ),
            padding: const EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
      child:Column(
        children: [
           Row( children: [
            Text('O que é compostagem?',
             style: TextStyle(fontSize: 18, color: Colors.white),)
          ],),
        ],
      )
      )
    );
   
  }
}