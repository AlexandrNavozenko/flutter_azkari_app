import 'package:flutter/material.dart';

import '../../constants.dart';

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
                  color: Colors.green,
                ),
                Text(
                  'Москва',
                  style: TextStyle(
                    color: Colors.green,
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
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

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
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: isDecoration ? Colors.green : Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Text(
        '07:12',
        style: TextStyle(
          color: isDecoration ? Colors.green : Colors.black,
          fontSize: 14.0,
          fontWeight: isDecoration ? FontWeight.bold : FontWeight.w400,
        ),
      ),
    );
  }
}
