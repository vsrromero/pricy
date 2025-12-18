import 'package:flutter/material.dart';
import '../../../../core/supabase/supabase_service.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  // Função para testar conexão
  Future<void> _testSupabaseConnection() async {
    try {
      final response = await SupabaseService.client
          .from('products') // Nome de uma tabela sua
          .select('*')
          .limit(1);
      
      print('✅ Conectado ao Supabase! Dados: $response');
    } catch (e) {
      print('❌ Erro ao conectar: $e');
    }
  }

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
              onPressed: _testSupabaseConnection, // Teste de conexão
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Testar Conexão Supabase'),
            ),

            const SizedBox(height: 16),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text('Criar conta'),
            ),
          ],
        ),
      ),
    );
  }
}