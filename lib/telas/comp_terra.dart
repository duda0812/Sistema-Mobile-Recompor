import 'package:flutter/material.dart';
import 'package:app/telas/telainicial.dart';
import 'package:app/telas/criar_conta.dart';

class Comp_terra extends StatelessWidget {
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
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Comp_terra()),
                          );
                        },
                        child: const Text(
                          'Terra',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 20, 20, 20)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Telainicial()),
                          );
                        },
                        child: const Text(
                          'Composteira',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Materiais Necessários: ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pá pequena ',
                          style: TextStyle(
                              fontSize: 18, color: Colors.green.shade100),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pá pequena de plástico ou metal.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/imagens/pa.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 65.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('lib/imagens/lamp2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Se não tiver a pá, pode construir\numa usando a embalagem de \namaciante ou de água sanitária\ncom alça.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(children: [
                      const SizedBox(height: 30),
                      Terra(
                          'Folhas secas',
                          'Folhas secas de qualquer tipo ou serragem.',
                          'lib/imagens/folhaSeca.jpg',
                          'Obs.: Quantidade recomendável 500 g'),
                      Terra(
                          'Terra',
                          'Terra preta.',
                          'lib/imagens/terraPreta.jpg',
                          'Obs: Quantidade recomendável 200 g'),
                      Terra('Resíduos orgânicos','Como: pó de café, casca de alimentos e frutas.', 'lib/imagens/cascas.jpg', '' ),
                    ]),
                    Text("Tutorial", style: TextStyle(fontSize: 23, color: Colors.white),),
                    const SizedBox(height: 30),
                    Tutorial('lib/imagens/paTerra.jpg','Passo 1', 'Cave um buraco para os resíduos.' )
                  ])
                ]))));
  }
}

class Terra extends StatefulWidget {   
  final String foto;
  final String titulo;
  final String texto;
  final String obs;
  const Terra(this.titulo, this.texto, this.foto, this.obs, {Key? key})
      : super(key: key);

  @override
  State<Terra> createState() => _TerraState();
}

class _TerraState extends State<Terra> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green.shade100,
                  ),
                ),
                SizedBox(height: 10),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.foto),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Text(
                    widget.obs,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green.shade100,
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

class Tutorial extends StatefulWidget {
  final String foto;
  final String titulo;
  final String texto;
  const Tutorial(this.foto, this.titulo, this.texto,  {Key? key}) : super(key: key);

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
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
