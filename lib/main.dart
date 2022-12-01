import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/BODY.dart';

void main() {
  // add these lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(51, 153, 255, .1),
      100: Color.fromRGBO(51, 153, 255, .2),
      200: Color.fromRGBO(51, 153, 255, .3),
      300: Color.fromRGBO(51, 153, 255, .4),
      400: Color.fromRGBO(51, 153, 255, .5),
      500: Color.fromRGBO(51, 153, 255, .6),
      600: Color.fromRGBO(51, 153, 255, .7),
      700: Color.fromRGBO(51, 153, 255, .8),
      800: Color.fromRGBO(51, 153, 255, .9),
      900: Color.fromRGBO(51, 153, 255, 1),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF090c22, color),
        accentColor: Colors.pink,
        scaffoldBackgroundColor: Color(0xFF090c22),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: BODY(),
    );
  }
}
