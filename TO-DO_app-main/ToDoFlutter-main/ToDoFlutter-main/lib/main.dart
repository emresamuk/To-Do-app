import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

void main() async {
  try {
    // init the hive
    await Hive.initFlutter();

    // open a box
    var box = await Hive.openBox('mybox');

    runApp(const MyApp());
  } catch (error) {
    print('Hive initialization error: $error');
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }


}
