import 'package:flutter/material.dart';
import 'package:app/telas/telainicial.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset('lib/imagens/iconepessoa.png'),
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Insira um nome de usuário";
                  }else if ((value?.length ?? 0) < 4 || (value?.length ?? 0) > 8) {
                    return "Insira um nome de usuário de 4 a 8 caracteres";
                  }
                  return null;
                },
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Usuário',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Insira um endereço de email";
                  } 
                  else if (!(value?.contains('@') ?? false)) { 
                    return "Endereço de email inválido";
                  }
                  return null;
                },
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Insira uma senha";
                  } else if ((value?.length ?? 0) < 4 || (value?.length ?? 0) > 8) {
                    return "Insira uma senha de 4 a 8 caracteres";
                  }

                  //return null;
                },
                controller: _passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 50),
              SizedBox(
                  width: 250,
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cadastro()));
                      }

                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cadastro()),
                      );*/
                    },
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
