import 'package:flutter/material.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

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
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset('lib/imagens/recompor.png') ,
              ),
              const SizedBox(height: 50), // Espaçamento entre a imagem e o botão
            SizedBox(
              width: double.infinity, // Largura do botão
              height: 60, // Altura do botão

            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                  width: 3
                )
              ),
              onPressed: () {},
              child: const Text('Criar Conta', style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
            ),

            const SizedBox(height: 50), // Espaçamento entre a imagem e o botão
            SizedBox(
              width: double.infinity, // Largura do botão
              height: 60, // Altura do botão

            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                  width: 3
                )
              ),
              onPressed: () {},
              child: const Text('Login', style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
            ),

            const SizedBox(height: 50), // Espaçamento entre a imagem e o botão
            SizedBox(
              width: double.infinity, // Largura do botão
              height: 60, // Altura do botão

            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                  width: 3
                )
              ),
              onPressed: () {},
              child: const Text('Usar sem conta', style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
            ),
            
            const SizedBox(height: 200),
            Center(child: Text('Compostagem e hábitos sustentáveis', style: TextStyle(fontSize: 18, color: Colors.white), ))
            ],
            
            
        ) ,

      
        
      )
      


      );


    
  }
}

/*class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'lib/imagens/fundo do app.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        )
    
      ]
    );
  }
}*/