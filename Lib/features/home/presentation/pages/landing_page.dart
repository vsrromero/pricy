import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 320,
            ),
            const SizedBox(height: 50),
            const Text(
              'Bem-vindo ao Pricy 👋\nSeu comparador de preços inteligente',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                height: 1.4,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Entrar'),
            ),

            const SizedBox(height: 16),

            TextButton(
              onPressed: () {},
              child: const Text('Criar conta'),
            ),
          ],
        ),
      ),
    );
  }
}
