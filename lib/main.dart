import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pishon/screens/home_page.dart';
import 'package:pishon/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Porn Subtitle in Myanmar',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
        ),
        // scaffoldBackgroundColor: Colors.white.withOpacity(0.2),
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(selectedItemColor: Colors.white),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
