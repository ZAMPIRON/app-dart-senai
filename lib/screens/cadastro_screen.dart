import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _nomeController = TextEditingController();
  final _sobrenomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmarSenhaController = TextEditingController();

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      border: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE3000F), width: 2)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xFFE3000F),
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  children: [
                    Image.asset('assets/senai_logo.png', height: 60),
                    const SizedBox(height: 12),
                    const Text('Cadastre-se', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinha os textos à esquerda
                  children: [
                    const SizedBox(height: 8),

                    // CAMPO NOME
                    const Text('Nome:', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _nomeController,
                      decoration: _inputDecoration('Insira seu nome:'),
                    ),
                    const SizedBox(height: 16),

                    // CAMPO SOBRENOME
                    const Text('Sobrenome:', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _sobrenomeController,
                      decoration: _inputDecoration('Insira seu sobrenome:'),
                    ),
                    const SizedBox(height: 16),

                    // CAMPO E-MAIL
                    const Text('E-mail:', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: _inputDecoration('Insira seu email:'),
                    ),
                    const SizedBox(height: 16),

                    // CAMPO TELEFONE
                    const Text('Telefone:', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _telefoneController,
                      keyboardType: TextInputType.phone,
                      decoration: _inputDecoration('Insira seu telefone:'),
                    ),
                    const SizedBox(height: 16),

                    // CAMPO SENHA
                    const Text('Senha:', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _senhaController,
                      obscureText: true, // Esconde a senha
                      decoration: _inputDecoration('Insira sua senha:'),
                    ),
                    const SizedBox(height: 16),

                    // CAMPO CONFIRMAR SENHA
                    const Text('Confirmar Senha:', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    const SizedBox(height: 6),
                    TextField(
                      controller: _confirmarSenhaController,
                      obscureText: true, // Esconde a senha
                      decoration: _inputDecoration('Insira sua senha:'),
                    ),
                    const SizedBox(height: 24),

                    // BOTÃO DE CADASTRAR
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Aqui vai a lógica para salvar os dados
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 16),

                    // BOTÃO VOLTAR
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          'Já tem uma conta? Faça Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}