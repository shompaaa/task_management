import 'package:flutter/material.dart';
import 'package:task_management/ui/screens/add_new_task_screen.dart';
import 'package:task_management/ui/widgets/summary_card.dart';
import 'package:task_management/ui/widgets/task_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                return TaskCard(
                  taskStatus: TaskStatus.sNew,
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 8,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddNewTask,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SummaryCard(
              title: 'New',
              count: 12,
            ),
            SummaryCard(
              title: 'Progress',
              count: 8,
            ),
            SummaryCard(
              title: 'Completed',
              count: 18,
            ),
            SummaryCard(
              title: 'Cancelled',
              count: 2,
            ),
          ],
        ),
      ),
    );
  }

  void _onTapAddNewTask() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddNewTaskScreen(),
      ),
    );
  }
}


