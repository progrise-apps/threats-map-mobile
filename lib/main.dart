import 'package:flutter/material.dart';
import 'package:threats_map_mobile/home/pages/home_page.dart';
import 'package:threats_map_mobile/threats/controllers/threats_controller.dart';
import 'package:threats_map_mobile/threats/dao/threats_dao.dart';

Future<void> main() async {
  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Threats Map',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage()
    );
  }
}

Future<void> initializeDependencies() async {
  ThreatsDao();
  ThreatsController();
}