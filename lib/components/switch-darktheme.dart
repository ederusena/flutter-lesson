// ignore: file_names
import 'package:flutter/material.dart';
import '../app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.toggleTheme();
      },
    );
  }
}
