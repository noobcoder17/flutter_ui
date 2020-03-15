import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//pages
import 'page1.dart';
import 'page2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Color(0xff1f284c)
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android : CupertinoPageTransitionsBuilder()
          }
        )
      ),
      home: Page1(),
      routes: {
        Page2.routeName : (ctx)=>Page2()
      },
    );
  }
}



