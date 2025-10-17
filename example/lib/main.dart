import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: const IconThemeData(
          color: Colors.red,
        ),
      ),
      home: const HeroIconTheme(
        // .outline is the default style anyhow, but this is how you can change
        // the default style of all HeroIcons in your app.
        style: IconsaxIconStyle.outline,
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryButtonStyle = ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(
        Colors.blue,
      ),
      iconColor: const WidgetStatePropertyAll(
        Colors.red,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('HeroIcons'),
      ),
      body: Center(
        child: IconTheme(
          data: IconThemeData(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconsaxIcon(HeroIcons.arrowLeft),
              IconsaxIcon(HeroIcons.arrowRight),
              IconsaxIcon(HeroIcons.calendar),
              IconsaxIcon(HeroIcons.arrowLeft, style: IconsaxIconStyle.solid),
              IconsaxIcon(HeroIcons.arrowRight, style: IconsaxIconStyle.solid),
              IconsaxIcon(HeroIcons.calendar, style: IconsaxIconStyle.solid),
              IconTheme(
                data: IconThemeData(
                  size: 40,
                  color: Colors.blue,
                ),
                child: IconsaxIcon(
                  HeroIcons.calendar,
                  style: IconsaxIconStyle.outline,
                ),
              ),
              IconTheme(
                data: IconThemeData(
                  size: 40,
                  color: Colors.red,
                ),
                child: IconsaxIcon(HeroIcons.calendar, style: IconsaxIconStyle.solid),
              ),
              IconTheme(
                data: IconThemeData(
                  size: 40,
                  color: Colors.blue,
                ),
                child: IconsaxIcon(HeroIcons.calendar, style: IconsaxIconStyle.mini),
              ),
              OutlinedButton(
                style: primaryButtonStyle,
                onPressed: () {
                  debugPrint('[HomeScreen.build] Clicked');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconsaxIcon(
                      HeroIcons.plus,
                      size: 20,
                      style: IconsaxIconStyle.mini,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Button',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
