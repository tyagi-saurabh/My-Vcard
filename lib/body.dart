import 'package:flutter/material.dart';
import 'package:my_vcard_flutter/custom_list_tile.dart';

// Container is as big as possible whenever there's no child . Also it's a single child widget
// Column on it's main axis tries to take maximum space whereas on it's cross axis it is limted by the space occupied by it's children by default
// you can change it by the Mainaxissize property.
// By default in a Column all widgets are alligned to the start of the screen
// change this by using Mainaxisalignment property
// Divider is a widget which adds a line on the screen
class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('android/assets/images/IMG_20190616_104135.jpg'),
            ),
            Text(
              'Saurabh Tyagi',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'TulpenOne',
                  color: Color.fromRGBO(232, 255, 255, 1),
                  fontSize: 25,
                  letterSpacing: 10),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: CustomListTile(
                icon: Icon(
                  Icons.phone,
                  color: Colors.cyan,
                ),
                text: Text(
                  '+919876543210',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      color: Colors.cyan.shade900,
                      fontSize: 20),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: CustomListTile(
                icon: Icon(
                  Icons.email,
                  color: Colors.cyan,
                ),
                text: Text(
                  'qwerty@xyz.com',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      color: Colors.cyan.shade900,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
