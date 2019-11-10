// Import flutter helper library
import 'package:flutter/material.dart';

// create a class that will be our custom widget

class App extends StatelessWidget {

  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KGIMOA Site"),        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Pressed!');
          },
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.search,
            color: Colors.red,
            ),

          )

        ),
    );
  }

}

// StatefulWidgetBuilder(context, setState) {}

