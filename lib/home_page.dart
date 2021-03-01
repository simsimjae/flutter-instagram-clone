import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instagram Clone')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(4.0)),
                Text('Instagram에 오신것을 환영합니다',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우하세요.'),
                Padding(padding: EdgeInsets.all(16.0)),
                SizedBox(
                  width: 270,
                  child: Card(
                    elevation: 4.0,
                    child: Column(children: <Widget>[
                      Padding(padding: EdgeInsets.all(4.0)),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://placehold.it/70x70'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text('이메일주소',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('이름'),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    'https://placehold.it/100x100')),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    'https://placehold.it/100x100')),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    'https://placehold.it/100x100')),
                          ]),
                      Padding(padding: EdgeInsets.all(4.0)),
                      Text('Facebook 친구'),
                      Padding(padding: EdgeInsets.all(6.0)),
                      RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blueAccent,
                          onPressed: () => {print('hi')},
                          child: Text('팔로우')),
                      Padding(padding: EdgeInsets.all(6.0)),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
