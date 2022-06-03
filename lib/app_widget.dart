import 'package:flutter/material.dart';

import 'homepage.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(), theme: ThemeData(primarySwatch: Colors.red));
  }
}
