import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() => runApp(MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      home: MyProfilePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile", style: TextStyle(fontSize: 17)),
        backgroundColor: Color(0xff00C853),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Top row: Profile picture and names
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/kaleb1.jpg",
                  height: 170,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kaleb",
                      style: TextStyle(
                          color: Color(0xff00E676),
                          fontSize: 30,
                          fontFamily: "Oswald"),
                    ),
                    Text(
                      "Tesfahun",
                      style: TextStyle(
                          color: Color(0xfff5f5f5),
                          fontSize: 31,
                          fontFamily: "Oswald"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Profession text
            Text(
              "Developer",
              style: TextStyle(
                  color: Color(0xffC0C0C0),
                  fontSize: 15,
                  fontFamily: "Merriweather"),
            ),
            SizedBox(height: 16),
            // Contact header
            Text(
              "Contact Me",
              style: TextStyle(
                  color: Color(0xff00C853),
                  fontSize: 30,
                  fontFamily: "Merriweather"),
            ),
            SizedBox(height: 16),
            // Contact rows
            ContactRow(
              icon: Icons.phone,
              info: "ETC: +251945606894\nSAFARICOM: +251707752073",
            ),
            ContactRow(
              icon: FontAwesomeIcons.github,
              info: "@kalutm",
            ),
            ContactRow(
              icon: Icons.email,
              info: "kalebtesfahun@gmail.com",
            ),
            ContactRow(
              icon: FontAwesomeIcons.telegram,
              info: "@kalutm",
            ),
            SizedBox(height: 16),
            // Elevated button for SnackBar
            ElevatedButton(
              onPressed: () {
                scaffoldMessengerKey.currentState!.showSnackBar(
                  SnackBar(
                    content: Text(
                      "You really thought there was another page? This was hard enough to make! 😂",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.black87,
                    duration: Duration(seconds: 4),
                    action: SnackBarAction(
                      label: 'UNDO',
                      textColor: Colors.yellow,
                      onPressed: () {
                        // Action when 'UNDO' is pressed
                        print('Undo pressed');
                      },
                    ),
                  ),
                );
              },
              child: Text(
                "Click here to go to the next page!",
                style: TextStyle(color: Color(0xff00C853)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String info;

  const ContactRow({super.key, required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Color(0xff00C853), size: 30),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            info,
            style: TextStyle(
                color: Color(0xffC0C0C0),
                fontSize: 17,
                fontFamily: "Oswald"),
          ),
        ),
      ],
    );
  }
}
