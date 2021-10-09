import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_journey/components/auth_state.dart';
import 'package:money_journey/utils/constants.dart';
import 'package:money_journey/widget/centered_layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends AuthState<LoginPage> {
  bool _isLoading = false;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  Future<void> _signIn() async {
    setState(() {
      _isLoading = true;
    });
    final response = await supabase.auth.signIn(
        email: _emailController.text, password: _passwordController.text);
    // options: AuthOptions(
    //     redirectTo: kIsWeb
    //         ? null
    //         : 'io.supabase.flutterquickstart://login-callback/'));
    final error = response.error;
    if (error != null) {
      context.showErrorSnackBar(message: error.message);
    } else {
      context.showSnackBar(message: 'Check your email for login link!');
      _emailController.clear();
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredLayout(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: FlutterLogo(size: 150.0)),
              const SizedBox(height: 50),
              const Text('Sign in with email'),
              const SizedBox(height: 18),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 18),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _signIn,
                  child: Text(_isLoading ? 'Loading' : 'Login'),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () => context.go('/register'),
                  child: const Text('Register'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
