import 'package:flutter/material.dart';
import 'package:noon/provider/theme-provider.dart';
import 'package:provider/provider.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Switch.adaptive(
          value: _provider.isLightTheme(),
          onChanged: (value) {
            Provider.of<ThemeProvider>(context, listen: false)
                .toggleTheme(value);
          },
        ),
      ),
    );
  }
}
