import 'package:flutter/material.dart';
import 'package:task_management/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey),
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            border: _getZeroBorder(),
            enabledBorder: _getZeroBorder(),
          errorBorder: _getZeroBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(double.maxFinite),
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              )
          ),
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
      ),


      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

  OutlineInputBorder _getZeroBorder(){
    return const OutlineInputBorder(
        borderSide: BorderSide.none
    );

  }

}
