import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class DetailCard extends StatelessWidget {
  final String image, title, description;
  final int typeAczaryId;

  const DetailCard(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.description,
      @required this.typeAczaryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            color: Colors.white,
            height: 50.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            color: Colors.white,
            height: 100.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Text(
              description,
              style: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
