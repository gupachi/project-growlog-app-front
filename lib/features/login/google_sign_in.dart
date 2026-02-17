import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

Future<void> signInWithGoogle() async {
  await supabase.auth.signInWithOAuth(
    OAuthProvider.google,
    queryParams: {'prompt': 'select_account'},
    redirectTo: 'io.supabase.flutter://login-callback',
  );
}
