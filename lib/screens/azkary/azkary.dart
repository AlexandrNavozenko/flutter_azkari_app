import 'package:flutter/material.dart';
import 'package:flutter_azkari_app/model/Azkary_model.dart';

import '../../constants.dart';
import 'components/body.dart';

class Azkary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    final List<AzkaryModel> azkariesByType = azkaries.where((element) => element.typeAczaryId == arguments['id']).toList();
    return Scaffold(
      backgroundColor: kDefaultBackgroundColorColor,
      appBar: _buildAppBar(context),
      body: Body(azkariesByType: azkariesByType),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Center(
          child: Text(
            'Азкары',
            style: TextStyle(color: Colors.black),
          )),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kDefaultTextColor,
          ),
          onPressed: () => Navigator.pop(context)),
      actions: [
        IconButton(
            icon: Icon(Icons.search, color: kTextColor),
            onPressed: () => print('press SEARCH')),
      ],
    );
  }
}
