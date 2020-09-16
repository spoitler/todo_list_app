
import 'package:flutter/material.dart';

import 'components/constants.dart';

class TodayTitle extends StatelessWidget {
  const TodayTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Today",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 50,
              color: kButtonColor,
            )
          ],
        )
      ],
    );
  }
}