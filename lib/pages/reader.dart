import 'package:flutter/material.dart';

class ReaderPage extends StatefulWidget {
  @override
  _ReaderPageState createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  bool ready = false;

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context).settings.arguments;
    Future.delayed(Duration(seconds: 1)).then((onValue) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(content: Text('Function building ...'));
          }).then((onValue) {
        Navigator.of(context).pop();
      });
    });
    return Container(
      child: ready ? Text(url) : Center(child: CircularProgressIndicator()),
    );
  }
}
