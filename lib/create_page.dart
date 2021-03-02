import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
              width: 40,
              height: 40,
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  print('send');
                },
              ))
        ],
        title: Center(child: Text('새 게시물')),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Text('No Image'),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력해주세요'),
          controller: textEditingController,
        ),
      ],
    );
  }
}
