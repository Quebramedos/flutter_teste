/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador", 
      debugShowCheckedModeBanner: false, 
      home: Home()));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

//https://media0.giphy.com/media/WOIIAOhxYl4Jy8ASfr/giphy.gif
//https://fsb.zobj.net/crop.php?r=W-RsMPjthSs_M_a4BNiHyhdawfyHrxwldKiSlbjSXVv5-xKJbrxWcE1Q9TJk-KIeHabshza6bFqFhrEfdcFlbhxPmgCC3h_sRpibR9WZfJp6GVpYLiEkfqtIvwpVu1FYXDA_cctAstKQOUOis9pd8XzJDc37E-GYhvwDgP6bnZyWIYBT3qqIgkkkv5g
//https://media.giphy.com/media/MuCAiDiU062coVwEWv/giphy.gif
class _HomeState extends State<Home> {
  int _quantidadePessoas = 0;
  String _retorno = "PODE ENTRAR";

  void _alterar(int quantidade) {
    setState(() {
      _quantidadePessoas += quantidade;
    });

    if (_quantidadePessoas < 10) {
      _retorno = "PODE ENTRAR";
    } else {
      _retorno = "NÃO PODE ENTRAR!";
    }
    if (_quantidadePessoas > 40 || _quantidadePessoas < 0) {
      _quantidadePessoas = _quantidadePessoas ~/ 2;
      _retorno = "INEVITÁVEL!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(
            "https://fsb.zobj.net/crop.php?r=W-RsMPjthSs_M_a4BNiHyhdawfyHrxwldKiSlbjSXVv5-xKJbrxWcE1Q9TJk-KIeHabshza6bFqFhrEfdcFlbhxPmgCC3h_sRpibR9WZfJp6GVpYLiEkfqtIvwpVu1FYXDA_cctAstKQOUOis9pd8XzJDc37E-GYhvwDgP6bnZyWIYBT3qqIgkkkv5g",
            fit: BoxFit.cover,
            height: 1080),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$_quantidadePessoas Pessoas",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 40, color: Colors.red)),
                    onPressed: () {
                      _alterar(-1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.green,
                            decoration: TextDecoration.none)),
                    onPressed: () {
                      _alterar(1);
                    },
                  ),
                )
              ],
            ),
            Text(
              "$_retorno",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none),
            )
          ],
        )
      ],
    );
  }
}
