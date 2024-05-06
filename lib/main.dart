import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui_gdsc/screens/home_page.dart';
import 'package:whatsapp_ui_gdsc/providers/img_provider.dart';

/*
* Please Run flutter pub get to get all the dependencies
*/
void main() {
  runApp(
    ChangeNotifierProvider<ImgProvider>(
      create: (context) => ImgProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
