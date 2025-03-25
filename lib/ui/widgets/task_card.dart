import 'package:flutter/material.dart';

enum TaskStatus{
  sNew,
  progress,
  completed,
  cancelled,
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key, required this.taskStatus,
  });

  final TaskStatus taskStatus;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title will be here',
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),
            ),
            Text(
              'Description will be here',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
            Text('Date: 21/3/2025'),
            Row(
              children: [
                Chip(
                  label: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: _getStatusChipColor(),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Color _getStatusChipColor(){
    late Color color;
    switch(taskStatus){

      case TaskStatus.sNew:
        color = Colors.blue;
      case TaskStatus.progress:
        color = Colors.purple;
      case TaskStatus.completed:
        color = Colors.green;
      case TaskStatus.cancelled:
        color = Colors.orange;
    }
    return color;


  }

}
