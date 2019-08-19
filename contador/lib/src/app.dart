import 'package:flutter/material.dart';

// import 'pages/home_page.dart';
import 'package:contador/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      home: CounterPage(),
    );
  }

}