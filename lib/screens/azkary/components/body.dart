import 'package:flutter/material.dart';
import 'package:flutter_azkari_app/model/Azkary_model.dart';
import 'package:flutter_azkari_app/screens/components/time_header.dart';

import 'detail_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.azkariesByType,
  }) : super(key: key);

  final List<AzkaryModel> azkariesByType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TimeHeader(),
          ...List.generate(
            azkariesByType.length,
                (index) => DetailCard(
              typeAczaryId: azkariesByType[index].typeAczaryId,
              image: azkariesByType[index].image,
              title: azkariesByType[index].title,
              description: azkariesByType[index].description,
            ),
          ),
        ],
      ),
    );
  }
}