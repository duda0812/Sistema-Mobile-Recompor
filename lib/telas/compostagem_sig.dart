import 'package:app/telas/telainicial.dart';
import 'package:flutter/material.dart';

class compostagem_sig extends StatelessWidget {
  const compostagem_sig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/imagens/fundo.png"), fit: BoxFit.cover),
        ),
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250, top: 1),
                      child: IconButton(
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
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'O que é compostagem?',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const SizedBox(
                  child: Center(
                    child: Text(
                      'Compostagem é o processo de decomposição e reciclagem da materia orgânica, ou seja, de reutilizar o lixo orgânico.',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const SizedBox(
                  child: Center(
                    child: Text(
                      'Sabe aquela casca de laranja, alho, talos de vegetais, pó de café que costuma jogar fora?',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 325,
                    height: 325,
                    child: Image.asset('lib/imagens/restos1.jpg'),
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(
                  child: Center(
                    child: Text(
                      'Esses materiais são ricos em nutrientes para as plantas. Assim, por meio da compostagem fazemos um adubo natural ao invés de descartá-los.',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: SizedBox(
                    width: 325,
                    height: 325,
                    child: Image.asset('lib/imagens/maoterra.jpg'),
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(
                  child: Center(
                    child: Text(
                      'Esses materiais além de causar mau cheiro ao ser descartado incorretamente, atrai bichos peçonhentos e libera gases de efeito estufa para o meio ambiente.',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
