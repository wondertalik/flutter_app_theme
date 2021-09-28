import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/view/demo_content.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const SafeArea(
        child: DemoContent(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
