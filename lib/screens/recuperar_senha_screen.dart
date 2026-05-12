import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({super.key});

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  final _emailController = TextEditingController();

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
                color: const Color(0xFF1A237E),
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  children: [
                    Image.asset('assets/senai_logo.png', height: 60),
                    const SizedBox(height: 12),
                    const Text('Recuperação de senha', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const Text('Insira seu e-mail para recuperar a senha!', textAlign: TextAlign.center),
                    const SizedBox(height: 24),
                    TextField(controller: _emailController, decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Email')),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text('Recuperar'),
                      ),
                    ),
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text('Voltar para o Login')),
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