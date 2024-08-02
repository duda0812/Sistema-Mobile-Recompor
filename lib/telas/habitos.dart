import 'package:app/telas/telainicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Habitos extends StatelessWidget {
  const Habitos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          
            leading:
            IconButton(
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
             child: ListView(
              children:<Widget> [
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hábitos Sustentáveis',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Wrap( 
                        children: [
                          Text(
                            'Dicas para um lar mais sustentável',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                        ),
                    ),
                    

                    Container()
                    ],
                    
                ),
              ],
      ),
      
      ),
      ),
    );

  }
}