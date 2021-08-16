import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noon/constants.dart';
import 'package:noon/provider/theme-provider.dart';
import 'package:noon/screens/homenav.dart';
import 'package:noon/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Noon',
            debugShowCheckedModeBanner: false,
            theme: lightTheme(context),
            darkTheme: darkTheme(context),
            themeMode: themeProvider.mode,
            home: HomeNav(),
          );
        });
  }
}
