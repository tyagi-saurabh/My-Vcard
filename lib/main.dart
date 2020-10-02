import 'package:flutter/material.dart';
import 'body.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan,
      ),
      home: MyvCard(),
    ),
  );
}

class MyvCard extends StatelessWidget {
  const MyvCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
