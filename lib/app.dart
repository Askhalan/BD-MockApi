import 'package:bd_mock_api/core/theme/theme.dart';
import 'package:bd_mock_api/view/screens/home/scn_home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home: const ScnHome(),
    );
  }
}
