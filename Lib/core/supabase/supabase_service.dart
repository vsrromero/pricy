import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseService {
  static late final SupabaseClient _client;
  
  static SupabaseClient get client => _client;
  
  static Future<void> initialize() async {
    // Primeiro carregar o arquivo .env
    await dotenv.load(fileName: '.env');
    
    print('🔑 SUPABASE_URL: ${dotenv.env['SUPABASE_URL']}');
    print('🔑 SUPABASE_ANON_KEY existe: ${dotenv.env['SUPABASE_ANON_KEY']?.isNotEmpty}');
    
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );
    
    _client = Supabase.instance.client;
  }
  
  // Métodos úteis
  static bool get isAuthenticated => _client.auth.currentUser != null;
  
  static User? get currentUser => _client.auth.currentUser;
  
  static Stream<AuthState> get authStateChanges => _client.auth.onAuthStateChange;
}