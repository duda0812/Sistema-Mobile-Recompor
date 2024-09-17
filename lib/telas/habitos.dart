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
                  Column(
                    children: [
                      Dicas("lib/imagens/gota.jpg", 'Reaproveite água',
                          'A água da máquina de lavar pode ser usada novamente para limpar calçadas, dar descarga e limpezas menores.'),
                      Dicas("lib/imagens/torneira.png", 'Atenção à torneira',
                          'Enquanto lavar as mãos, escovar os dentes ou lavar o rosto, mantenha a torneira fechada.'),
                      Dicas(
                          "lib/imagens/chuveiro.jpg",
                          'Evite usar chuveiro elétrico',
                          'O chuveiro elétrico é um dos que mais consome energia, quando estiver frio deixe na posição verão.'),
                      Dicas('lib/imagens/lampada.jpg', 'Use lâmpadas LEDS',
                          'A lâmpada LED além de durar mais, são 65% mais econômicas que as fluorescentes.'),
                      Dicas('lib/imagens/sacola.jpg', 'Use sacolas retornáveis',
                          'Quando for ao mercado, leve uma sacola reutilizável para evitar o uso de sacolas plásticas.'),
                      Dicas(
                          'lib/imagens/geladeira.jpg',
                          'Evite abrir a geladeira',
                          'Deixar a geladeira aberta ou abri-la muito consome energia e pode estragar os alimentos.'),
                      Dicas(
                          'lib/imagens/janela.jpg',
                          'Aproveite a claridade do ambiente',
                          'Desligue as luzes e abra a janela durante o dia. As lâmpadas pode aumentar muito a conta.'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dicas extends StatefulWidget {
  final String foto;
  final String titulo;
  final String texto;
  const Dicas(this.foto, this.titulo, this.texto, {Key? key}) : super(key: key);

  @override
  State<Dicas> createState() => _DicasState();
}

class _DicasState extends State<Dicas> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.foto),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green.shade100,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Text(
                    widget.texto,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
