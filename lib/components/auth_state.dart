import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_journey/utils/constants.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
  @override
  void onUnauthenticated() {
    if (mounted) {
      context.go('/login');
    }
  }

  @override
  void onAuthenticated(Session session) {
    if (mounted) {
      context.go('/home');
    }
  }

  @override
  void onPasswordRecovery(Session session) {}

  @override
  void onErrorAuthenticating(String message) {
    context.showErrorSnackBar(message: message);
  }
}
