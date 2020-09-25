import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_azkari_app/constants.dart';

import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColorColor,
      body: Body(),
    );
  }
}
