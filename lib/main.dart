import 'package:flutter/material.dart';
import 'package:zikr_loop/ui/routes/routes.dart';
import 'package:zikr_loop/ui/zikr/zikr_listing_page.dart';

import 'ui/home/homePage.dart';
import 'ui/theme/theme.dart';
import 'ui/theme/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Brightness? brightness;

  @override
  void initState() {
    super.initState();
    // Register this class as a listener for platform events like brightness change
    WidgetsBinding.instance.addObserver(this);

    // Get the initial platform brightness
    brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }

  @override
  void didChangePlatformBrightness() {
    // Called when the platform's brightness changes
    setState(() {
      brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    });
  }

  @override
  void dispose() {
    // Remove the observer when the widget is disposed
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme("Abel", "Mada");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Zikr Loop',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      initialRoute: Routes.home.name,
      routes: {
        Routes.home.name: (context) => HomePage(title: 'Zikr Loop'),
        Routes.zikrList.name: (context) => ZikrlistingPage(title: 'Zikr'),
      },
    );
  }
}
