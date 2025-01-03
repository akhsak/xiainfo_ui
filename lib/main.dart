import 'package:figma_ui/controller/bottom_provider.dart';
import 'package:figma_ui/view/bottom_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomScreen(),
      ),
    );
  }
}
