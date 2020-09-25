import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_azkari_app/constants.dart';

import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColorColor,
      appBar: _buildAppBar(),
      body: Body(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Center(
          child: Text(
        'Азкари',
        style: TextStyle(color: Colors.black),
      )),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kDefaultTextColor,
          ),
          onPressed: () => print('press BACK')),
      actions: [
        IconButton(
            icon: Icon(Icons.search, color: kTextColor),
            onPressed: () => print('press SEARCH')),
      ],
    );
  }
}
