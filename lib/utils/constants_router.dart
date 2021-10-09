import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SplashPage(),
      ),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const LoginPage(),
      ),
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const RegisterPage(),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const HomePage(),
      ),
    ),
    GoRoute(
      path: '/account',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const AccountPage(),
      ),
    ),
    GoRoute(
      path: '/add',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const AddedPage(),
      ),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage<void>(
    key: state.pageKey,
    child: ErrorPage(state.error),
  ),
);
