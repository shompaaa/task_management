import 'package:flutter/material.dart';
import 'package:task_management/ui/widgets/screen_background.dart';
import 'package:task_management/ui/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TMAppBar(fromProfileScreen: null,),
      body: ScreenBackground(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text('Add New Task',
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Title'
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: 'Description',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8)
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _onTapSignInButton,
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _onTapSignInButton(){}
}
