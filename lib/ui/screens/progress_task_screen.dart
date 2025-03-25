import 'package:flutter/material.dart';
import 'package:task_management/ui/widgets/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return TaskCard(taskStatus: TaskStatus.progress,);
        },
        separatorBuilder: (context, index) => SizedBox(height: 8,),
      ),
    );
  }

}
