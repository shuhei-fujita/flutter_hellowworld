import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;
  String tf_Id;

  final myFocusNode = FocusNode();
  final myController = TextEditingController();

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
//        color: Colors.indigoAccent,
        child: Column(
          children: <Widget>[
            Text(name),
            Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: myController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ID'
                  ),
                  onChanged: (text) {
                    print("First text field: $text");
                    tf_Id = text;
                  },
                ),
                TextFormField(
                  focusNode: myFocusNode,
                  decoration: InputDecoration(
                    hintText: 'password'
                  ),
                ),
                RaisedButton(
                  child: Text('フォーカス！！'),
                  onPressed: () {
                    myFocusNode.requestFocus();
                  },
                ),
                RaisedButton(
                  child: Text('Sign in'),
                  onPressed: () {
                    print("Sing in : ${myController.text}");
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the user has entered by using the
                          // TextEditingController.
                          content: Text(tf_Id),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
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
