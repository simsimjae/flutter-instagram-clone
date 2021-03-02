import 'package:flutter/material.dart';
import 'package:instagram_clone/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 1.0),
        itemBuilder: (context, index) {
          return _buildGridItem(context, index);
        });
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return Image.network('https://placehold.it/150x150', fit: BoxFit.fill);
  }
}
