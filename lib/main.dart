import 'package:flutter/material.dart';
import 'package:flutterapp/next_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = 'NEXT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syuhei FujitaのFlutterApp'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Center(
//        height: 200,
//        color: Colors.blue,
//        child: Padding(
//          padding: const EdgeInsets.all(32.0),
//          child: Row(
//            children: <Widget>[
//              Text('syuheifujita'),
//              Text('syuheifujita'),
//              Text('syuheifujita'),
//            ],
//          ),
//        ),
        child: RaisedButton(
          child: Text(text),
          onPressed: () async {
            // ここにタップしたら反応するコードをかく
            // 画面遷移のコード
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage('syuheifujitaさん')),
            );
            print(result);
            text = result;
          },

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
