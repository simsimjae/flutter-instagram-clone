import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      actions: <Widget>[
        IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
      ],
    );
  }

  // 스파크플러스,

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAvatar(),
              _buildFollow(),
            ],
          )
        ],
      ),
    );
  }

  _buildAvatar() {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://placehold.it/70x70'),
              ),
            ),
            Container(
                width: 70,
                height: 70,
                alignment: Alignment.bottomRight,
                child: Stack(alignment: Alignment.center, children: [
                  SizedBox(
                      width: 27,
                      height: 27,
                      child: FloatingActionButton(
                        onPressed: null,
                        backgroundColor: Colors.white,
                      )),
                  SizedBox(
                      width: 25,
                      height: 25,
                      child: FloatingActionButton(
                          onPressed: () {
                            print('fab tab');
                          },
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add))),
                ])),
          ],
        ),
        Padding(padding: EdgeInsets.all(4)),
        Text('Jae Cheol Sim',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))
      ],
    );
  }

  _buildFollow() {
    return Expanded(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [Text('4'), Text('게시물')],
        ),
        Padding(padding: EdgeInsets.all(18)),
        Column(
          children: [Text('0'), Text('팔로워')],
        ),
        Padding(padding: EdgeInsets.all(18)),
        Column(
          children: [Text('0'), Text('팔로잉')],
        ),
      ]),
    );
  }
}
