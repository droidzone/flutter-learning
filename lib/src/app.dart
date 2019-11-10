// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

// create a class that will be our custom widget

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {

  int counter = 0;

  void fetchImage() {
    counter += 1;
    get('http://jsonplaceholder.typicode.com/photos/$counter');
  }

  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KGIMOA Site"),        
        ),
        body: Text('You pressed $counter times'),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
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

