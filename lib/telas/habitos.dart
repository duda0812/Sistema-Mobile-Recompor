import 'package:app/telas/telainicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Habitos extends StatelessWidget {
  const Habitos({super.key});

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
                MaterialPageRoute(builder: (context) => const Telainicial()),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/imagens/fundo.png"), fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.only(
            top: 10,
            left: 40,
            right: 40,
          ),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  const SizedBox(height: 45),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("lib/imagens/gota.jpg"),
                              fit: BoxFit
                                  .cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), 
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 200.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              Text(
                                'Reaproveite água',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green.shade100,
                                ),
                              ),
                              SizedBox(height: 5),
                              
                              Container(
                                 constraints: BoxConstraints(maxWidth: 400)
                              ,
                                child: Text(
                                  'A água da máquina de lavar pode ser reutilizada para a lavagem de calçadas, dar descarga e pequenas limpezas.',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.justify, 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
