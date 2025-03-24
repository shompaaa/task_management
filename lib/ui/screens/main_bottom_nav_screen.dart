import 'package:flutter/material.dart';
import 'package:task_management/ui/screens/cancelled_task_screen.dart';
import 'package:task_management/ui/screens/completed_task_screen.dart';
import 'package:task_management/ui/screens/new_task_screen.dart';
import 'package:task_management/ui/screens/progress_task_screen.dart';
import 'package:task_management/ui/widgets/tm_app_bar.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(fromProfileScreen: null,),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            _selectedIndex = index;
            setState(() {});
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.new_label), label: 'New'),
            NavigationDestination(
                icon: Icon(Icons.ac_unit_outlined), label: 'Progress'),
            NavigationDestination(icon: Icon(Icons.done), label: 'Complete'),
            NavigationDestination(
                icon: Icon(Icons.cancel_outlined), label: 'Cancelled'),
          ]),
    );
  }
}
