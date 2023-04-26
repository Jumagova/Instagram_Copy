import 'package:fakestagram/change_notifier/home_page_change_notifier.dart';
import 'package:fakestagram/change_notifier/login_change_notifier.dart';
import 'package:fakestagram/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/repository.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _repository = Repository();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginChangeNotifier(_repository)),
        ChangeNotifierProvider(create: (_) => HomePageChangeNotifier(_repository))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
      ),
    );
  }
}