import 'package:flutter/material.dart';
import 'package:app/telas/telainicial.dart';

class Comp_terra extends StatelessWidget {
  final dropValue = ValueNotifier("");
  final dropOpcoes = ["Terra", "Composteira"];
  Comp_terra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: IconButton(
                iconSize: 40,
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Telainicial()),
                  );
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/imagens/fundo.png"),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 40,
                  right: 40,
                ),
                child: ListView(children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Escolha onde irá fazer: ',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        
                      ],
                    ),
                  ])
                ]))));
  }
}
