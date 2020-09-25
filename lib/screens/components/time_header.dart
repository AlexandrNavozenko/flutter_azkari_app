import 'package:flutter/material.dart';

import '../../constants.dart';
import 'time_decoration.dart';

class TimeHeader extends StatelessWidget {
  const TimeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        color: Colors.white,
        height: 50.0,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: kDefaultTextColor,
                ),
                Text(
                  'Москва',
                  style: TextStyle(
                    color: kDefaultTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TimeDecoration(
                  title: '07:12',
                  isDecoration: false,
                ),
                TimeDecoration(
                  title: '12:43',
                  isDecoration: true,
                ),
                TimeDecoration(
                  title: '15:29',
                  isDecoration: false,
                ),
                TimeDecoration(
                  title: '18:11',
                  isDecoration: false,
                ),
                TimeDecoration(
                  title: '19:53',
                  isDecoration: false,
                ),
              ],
            ),
            Icon(
              Icons.notifications_none,
              color: kDefaultTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
