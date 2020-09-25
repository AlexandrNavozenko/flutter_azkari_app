import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class TimeDecoration extends StatelessWidget {
  const TimeDecoration({
    Key key,
    @required this.isDecoration,
    @required this.title,
  }) : super(key: key);

  final bool isDecoration;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:3.0),
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: isDecoration ? kDefaultTextColor : Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Text(
        '07:12',
        style: GoogleFonts.openSans(
          color: isDecoration ? kDefaultTextColor : Colors.black,
          fontSize: 14.0,
          fontWeight: isDecoration ? FontWeight.bold : FontWeight.w600,
        ),
      ),
    );
  }
}
