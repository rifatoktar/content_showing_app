import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/constant.dart';

class RevelantItem extends StatelessWidget {
  final String contentImage;
  final String contentTitle;
  final String userName;
  final String day;
  final String counter;
  const RevelantItem({
    super.key,
    required this.contentImage,
    required this.contentTitle,
    required this.userName,
    required this.day,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: buttonColor,
      leading: Container(
        height: 70,
        width: 85,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(contentImage))),
      ),
      title: Text(
        contentTitle,
        style: Constant.revelantTitle,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: Constant.revelantSubTitle,
          ),
          const SizedBox(
            width: 2,
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            child: SvgPicture.asset(
              "assets/icons/verfied.svg",
              color: verifyColor,
              height: 8,
            ),
          ),
          Text(
            ' • ',
            style: Constant.revelantSubTitle,
          ),
          Text(
            day,
            style: Constant.revelantSubTitle,
          ),
          Text(
            ' • ',
            style: Constant.revelantSubTitle,
          ),
          Text(
            counter,
            style: Constant.revelantSubTitle,
          ),
        ],
      ),
      trailing: SvgPicture.asset(
        "assets/icons/play.svg",
        color: primaryColor,
        height: 20,
      ),
    );
  }
}
