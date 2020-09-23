import 'package:flutter/material.dart';

import '../../../constants.dart';

class AzkaryCard extends StatelessWidget {
  const AzkaryCard({
    Key key,
    @required this.id,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  final int id;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(15.0),
      color: Colors.white,
      height: 180.0,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 40.0,
            left: 20.0,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          Positioned(
            bottom: 5.0,
            left: 4.0,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed( context, '/azkary',
                  arguments: <String, int>{
                    'id': id,
                  },
                );
              },
              child: Text(
                'Подробно >',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
