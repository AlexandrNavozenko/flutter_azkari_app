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
      body: Body(azkariesByType: azkariesByType),
    );
  }
}
