import 'package:th_aa_boardassist/login.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    Reception.tag: (context) => Reception(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.cyan,
        fontFamily: 'Product Sans',

        textTheme: TextTheme(
          headline: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Login(),
    );
  }
}

class Reception extends StatefulWidget {
  static String tag = "Reception";
  Reception({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ReceptionState createState() => _ReceptionState();
}

class _ReceptionState extends State<Reception> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the Reception object that was created by
          // the App.build method, and use it to set our appbar title.
//        leading: new Icon(Icons.exit_to_app),
          title: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
            Text(
              "Boarding Assistant",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline,
            )
          ])),
      body: new Row(mainAxisAlignment: MainAxisAlignment.center,
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.

          children: <Column>[

            Column(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\nFROM',
                    textAlign: TextAlign.left,
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: Text(
                      '$_counter',
                      key: ValueKey<int>(_counter),
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\nTO',
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: Text(
                      '$_counter',
                      key: ValueKey<int>(_counter),
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ),
                ])
          ]),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
