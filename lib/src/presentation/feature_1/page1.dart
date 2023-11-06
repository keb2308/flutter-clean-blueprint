import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Page1Route')
class Feature1Page extends StatelessWidget {
  const Feature1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Feature1Page();
  }
}

class _Feature1Page extends StatelessWidget {
  const _Feature1Page();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Page1',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
