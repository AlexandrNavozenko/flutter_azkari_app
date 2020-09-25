import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key key,
    @required this.pressBtbBack,
  }) : super(key: key);

  final Function pressBtbBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20.0,
      ),
      color: Colors.white,
      height: 70.0,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: kDefaultTextColor,
            ),
            onPressed: pressBtbBack,
          ),
          Text(
            'Азкары',
            style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          IconButton(
              icon: Icon(Icons.search, color: kTextColor),
              onPressed: () => print('press SEARCH')),
        ],
      ),
    );
  }
}
