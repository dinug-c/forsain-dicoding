// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final Color? color;
  const BaseLayout({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color ?? Colors.white,
      body: SafeArea(child: child),
    );
  }
}
