import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_listview_app/model/provider.dart';
import 'package:provider_listview_app/pages/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: const MaterialApp(
        title: 'Provider listview app',
        home: First(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
