import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
         padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: const Color.fromARGB(255, 125, 228, 132),
        child: ListView(
          children: 
            <Widget> [
              Center(
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset('lib/imagens/iconepessoa.png') ,
                ),
              ),
              const SizedBox(height: 50),
            ]
              ),
      ),
      
      

    );
  }
}