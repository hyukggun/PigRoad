import 'package:flutter/material.dart';

class DefaultThemeCard extends StatelessWidget {
  const DefaultThemeCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
    );
  }
}
