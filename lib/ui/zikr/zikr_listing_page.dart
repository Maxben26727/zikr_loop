import 'package:flutter/material.dart';


class ZikrlistingPage extends StatefulWidget {
  const ZikrlistingPage({super.key, required this.title});

  final String title;

  @override
  State<ZikrlistingPage> createState() => _ZikrlistingPage();
}

class _ZikrlistingPage extends State<ZikrlistingPage> {
  @override
  Widget build(BuildContext context) {
    //NavigationService service = NavigationService();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            // Add your child widgets here
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
    );
  }
}
