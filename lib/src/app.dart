import 'package:flutter/material.dart';

import 'package:curso_udemy_v1/src/pages/home_page/state_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
      );
  }
}
