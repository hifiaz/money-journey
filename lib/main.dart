import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'utils/constants_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: dotenv.env['URLSUPERBASE'],
    anonKey: dotenv.env['ANONKEY'],
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Money Journey',
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
    // initialRoute: '/',
    // routes: <String, WidgetBuilder>{
    //   '/': (_) => const SplashPage(),
    //   '/login': (_) => const LoginPage(),
    //   '/account': (_) => const AccountPage(),
    //   '/home': (_) => const HomePage(),
    // },
    // );
  }
}
