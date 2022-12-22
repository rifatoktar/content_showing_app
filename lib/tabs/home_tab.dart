import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constant.dart';
import '../widgets/header.dart';
import '../widgets/home_content.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(
            "assets/icons/drawer.svg",
            height: 20,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jeremy Hunt",
                  style: Constant.nameText,
                ),
                Text(
                  "Welcome back!",
                  style: Constant.welcomeText,
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(color: primaryColor),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search a content, creator...',
                  hintStyle: Constant.searchText,
                  prefixIcon: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: SvgPicture.asset(
                      "assets/icons/search.svg",
                      color: secondaryColor,
                      height: 20,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Header(
            header: "Today's Hit",
          ),
          const SizedBox(
            height: 16,
          ),
          const HomeContent(
            contentImage:
                'https://cloudfront-ap-southeast-2.images.arcpublishing.com/nzme/4G3BDUT5COOAHJYVI3QWKXTVCM.jpg',
            userImage:
                'https://www.billboard.com/wp-content/uploads/media/rihanna-kiss-it-better-video-2016-billboard-1.jpg?w=650',
            videoTitle:
                'DJ Khaled - Wild Thoughts \n(Official Video) ft. Rihanna, Bryson Tiller',
            counter: '2 Mn',
            day: 'Today',
            userName: 'Rihanna',
          ),
          const HomeContent(
            contentImage:
                'https://i.ytimg.com/vi/VuNIsY6JdUw/maxresdefault.jpg',
            counter: '2 Mn',
            day: 'Today',
            userImage:
                'https://www.billboard.com/wp-content/uploads/2022/07/taylor-swift-blank-space-mv-still-2014-billboard-1548.jpg',
            userName: 'Taylor Swift',
            videoTitle: 'You Belong With Me \n(Official Video)',
          ),
          const SizedBox(
            height: 16,
          ),
          const HomeContent(
            contentImage:
                'https://cloudfront-ap-southeast-2.images.arcpublishing.com/nzme/4G3BDUT5COOAHJYVI3QWKXTVCM.jpg',
            userImage:
                'https://www.billboard.com/wp-content/uploads/media/rihanna-kiss-it-better-video-2016-billboard-1.jpg?w=650',
            videoTitle:
                'DJ Khaled - Wild Thoughts \n(Official Video) ft. Rihanna, Bryson Tiller',
            counter: '2 Mn',
            day: 'Today',
            userName: 'Rihanna',
          ),
          const SizedBox(
            height: 16,
          ),
        ]),
      )),
    );
  }
}
