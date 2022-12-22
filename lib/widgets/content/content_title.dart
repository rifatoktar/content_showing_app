import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/constant.dart';

class ContentTitle extends StatelessWidget {
  final String videoTitle;
  final String userName;
  final String day;
  final String counter;
  final String userImage;
  final String likeCounter;
  const ContentTitle(
      {super.key,
      required this.videoTitle,
      required this.userName,
      required this.day,
      required this.counter,
      required this.userImage,
      required this.likeCounter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.only(bottom: 10, left: 9),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage(userImage))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                videoTitle,
                style: Constant.contentPageTitle,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: Constant.contentPageSubTitle,
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
                      '•',
                      style: Constant.contentPageSubTitle,
                    ),
                    Text(
                      day,
                      style: Constant.contentPageSubTitle,
                    ),
                    Text(
                      '•',
                      style: Constant.contentPageSubTitle,
                    ),
                    Text(
                      counter,
                      style: Constant.contentPageSubTitle,
                    ),
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              SvgPicture.asset(
                "assets/icons/heart-fill.svg",
                color: primaryColor,
                height: 15,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                likeCounter,
                style: Constant.likeCounter,
              )
            ],
          )
        ],
      ),
    );
  }
}
