import 'package:flutter/material.dart';
import 'package:flutter_azkari_app/screens/azkary/azkary.dart';

import 'Screens/home/home_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/azkary':(BuildContext context) => Azkary(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Azkari app',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
