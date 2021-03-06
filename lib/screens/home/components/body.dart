import 'package:flutter/material.dart';
import 'package:flutter_azkari_app/model/type_of_azkary_model.dart';
import 'package:flutter_azkari_app/screens/components/BuildAppBar.dart';

import '../../../constants.dart';
import 'azkary_card.dart';
import '../../components/time_header.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BuildAppBar(pressBtbBack: () => print('press BACK'),),
          TimeHeader(),
          ...List.generate(
            typeOfAzkaries.length,
            (index) => AzkaryCard(
              id: typeOfAzkaries[index].id,
              title: typeOfAzkaries[index].title,
              image: typeOfAzkaries[index].image,
            ),
          ),
        ],
      ),
    );
  }
}
