// import 'package:flutter_application_1/views/ar/ar_screen.dart';
// import 'package:flutter_application_1/views/homeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/ar/ar_screen.dart';
import 'package:flutter_application_1/views/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme:
              GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.black),
              titleTextStyle:
                  GoogleFonts.inter(color: Colors.black, fontSize: 20))),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        '/ar': (context) => const ArScreen(),
      },
    );
  }
}
