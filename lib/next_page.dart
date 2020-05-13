import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.indigoAccent,
        child: Column(
          children: <Widget>[
            Text(name),
            Center(
              child: RaisedButton(
                child: Text('BACK'),
                onPressed: (){
                  // 最初の画面に戻る
                  Navigator.pop(context, 'syuheifujitaさんかっこいい！！');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
