import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String titlenya;
  DetailPage({this.titlenya});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titlenya),
      ),
    );
  }
}
