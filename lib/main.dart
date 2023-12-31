import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/home.dart';
import 'package:test/pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider())
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}