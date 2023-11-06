import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Page2Route')
class Feature2Page extends StatelessWidget {
  const Feature2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Feature2Page();
  }
}

class _Feature2Page extends StatelessWidget {
  const _Feature2Page();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Page2',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
