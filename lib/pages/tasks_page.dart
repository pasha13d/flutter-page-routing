import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({
    Key? key,
    this.taskName
  }) : super(key: key);
  final String? taskName;

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.go("/"),
        ),
        title: const Text('Tasks Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is Profile page"),
            Text("Page route: ${router.location.toString()}"),
            Text("Task Name: ${widget.taskName}"),
          ],
        ),
      ),
    );
  }
}
