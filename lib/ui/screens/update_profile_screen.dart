import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_management/ui/widgets/screen_background.dart';
import 'package:task_management/ui/widgets/tm_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(
        fromProfileScreen: true,
      ),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text('Update Profile',
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(
                  height: 20,
                ),
                _buildPhotoPickerWidget(),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,

                  decoration: InputDecoration(hintText: 'First Name'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,

                  decoration: InputDecoration(hintText: 'Last Name'),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: 'Mobile'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: _onTapSubmitButton,
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSubmitButton(){

  }

  Widget _buildPhotoPickerWidget() {
    return GestureDetector(
      onTap: _onTapPhotoPicker,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Photo',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text('Select your photo')
          ],
        ),
      ),
    );
  }

  void _onTapPhotoPicker() {}


  }
