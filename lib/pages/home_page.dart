import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String title = 'GoRouter Routes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                context.go("/settings");
              }),
              child: const Text('Settings'),
            ),
            ElevatedButton(
              onPressed: (() {
                context.go("/profile");
              }),
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: (() {
                var paramTaskName = 'ToDo';
                context.goNamed(
                  'tasks',
                  queryParams: {'taskName': paramTaskName,}
                );
              }),
              child: const Text('Tasks Page'),
            ),
          ],
        ),
      ),
    );
  }
}