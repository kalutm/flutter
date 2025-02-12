import 'package:flutter/material.dart';
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('SnackBar Example')),
        // Using a Builder here ensures that we get a context that is a descendant of Scaffold.
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  // Use the context provided by the Builder
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'This is a SnackBar!',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.black87,
                      duration: Duration(seconds: 3),
                      action: SnackBarAction(
                        label: 'UNDO',
                        textColor: Colors.yellow,
                        onPressed: () {
                          // Perform an action when UNDO is pressed
                          print('Undo pressed');
                        },
                      ),
                    ),
                  );
                },
                child: Text('Show SnackBar'),
              ),
            );
          },
        ),
      ),
    );
  }
}
