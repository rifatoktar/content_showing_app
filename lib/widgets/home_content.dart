import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/content_detail.dart';
import '../theme/constant.dart';

class HomeContent extends StatelessWidget {
  final String userImage;
  final String contentImage;
  final String videoTitle;
  final String userName;
  final String day;
  final String counter;
  const HomeContent(
      {super.key,
      required this.contentImage,
      required this.userImage,
      required this.videoTitle,
      required this.userName,
      required this.day,
      required this.counter});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: Colors.transparent),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ContentDetail()),
        );
      },
      child: Container(
        height: 220,
        width: 328,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(contentImage),
          ),
        ),
        child: Container(
          height: 50,
          width: 328,
          padding: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.transparent,
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.7),
                Colors.black
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: SvgPicture.asset(
                  "assets/icons/play.svg",
                  color: secondaryColor,
                  width: 30,
                ),
              ),
              Row(
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
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          videoTitle,
                          style: Constant.contentHomeTitle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userName,
                                style: Constant.contentHomeSubtitle,
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
                                style: Constant.contentHomeSubtitle,
                              ),
                              Text(
                                day,
                                style: Constant.contentHomeSubtitle,
                              ),
                              Text(
                                '•',
                                style: Constant.contentHomeSubtitle,
                              ),
                              Text(
                                counter,
                                style: Constant.contentHomeSubtitle,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/more1.svg",
                        color: secondaryColor,
                        height: 20,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
