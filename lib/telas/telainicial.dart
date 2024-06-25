import 'package:app/telas/criar_conta.dart';
import 'package:app/telas/login.dart';
import 'package:flutter/material.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/imagens/fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        //color: const Color.fromARGB(255, 125, 228, 132),
        child: 
            Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset('lib/imagens/recompor.png'),
                ),
              
             const SizedBox(height: 50), 
            SizedBox(
              width: double.infinity, 
              height: 60, 
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
                    MaterialPageRoute(builder: (context) => const Cadastro()),
                  );
                },
                child: const Text(
                  'Criar Conta',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity, 
              height: 60, 
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
                    MaterialPageRoute(builder: (context) => const Login()), //mudar para a tela de login quando ela for criada
                  );},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 50), 
            SizedBox(
              width: double.infinity, 
              height: 60,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cadastro()), //mudar para a tela de  usar sem conta quando ela for criada
                  );},
                child: const Text(
                  'Usar sem conta',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 200),
            const Center(
              child: Text(
                'Compostagem e hábitos sustentáveis',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
            
      ),
      ),
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
