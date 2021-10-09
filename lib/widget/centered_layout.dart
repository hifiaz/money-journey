import 'package:flutter/material.dart';

class CenteredLayout extends StatelessWidget {
  const CenteredLayout({Key? key, this.maxWidth = 500, required this.child})
      : super(key: key);
  final double maxWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: SizedBox(
          width: maxWidth,
          child: child,
        ),
      ),
    );
  }
}
