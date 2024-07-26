import 'package:app/telas/telainicial.dart';
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
        
        Row(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 251, top: 1),
              child: IconButton( iconSize: 40,
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Telainicial()),
                  );},
              ),
            ),
          ],
        ),
        Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('O que é compostagem?',
            style: TextStyle(  fontSize: 24
            ,color: Colors.white),)
          ], ),
        ],
      )
      )
    );
   
  }
}