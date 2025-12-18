import 'package:flutter/material.dart';
import 'router.dart';

class PricyApp extends StatelessWidget {
  const PricyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pricy',
      debugShowCheckedModeBanner: false,
            theme: ThemeData(
        // Cor de fundo global da aplicação
        scaffoldBackgroundColor: const Color.fromARGB(255, 70, 135, 228), // Mude aqui para a cor desejada
        // Ou use um esquema de cores personalizado
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
