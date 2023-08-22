import 'package:flutter/material.dart';
import 'package:flutter_bloc_cleanarch/routes_list.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      darkTheme: ThemeData.dark(),
      getPages: all_Routes,
      initialRoute: "/mainScreen",
    );
  }
}
