import 'package:flutter/material.dart';
import 'app/pricy_app.dart';
import 'core/supabase/supabase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    print('🔄 Inicializando Supabase...');
    await SupabaseService.initialize();
    print('✅ Supabase inicializado com sucesso!');
  } catch (e) {
    print('❌ Erro ao inicializar Supabase: $e');
    // Continue mesmo com erro para testar a UI
  }
  
  print('🚀 Iniciando aplicação...');
  runApp(const PricyApp());
}