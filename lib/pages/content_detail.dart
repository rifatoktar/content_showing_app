import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vidddy/theme/constant.dart';
import 'package:vidddy/widgets/content/video_widget.dart';

import '../widgets/content/content_title.dart';
import '../widgets/content_header.dart';
import '../widgets/revelant_item.dart';

class ContentDetail extends StatefulWidget {
  const ContentDetail({super.key});

  @override
  State<ContentDetail> createState() => _ContentDetailState();
}

class _ContentDetailState extends State<ContentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 200,
              child: Video(
                videoLink: 'https://youtu.be/fyaI4-5849w',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const ContentTitle(
              videoTitle:
                  'DJ Khaled - Wild Thoughts (Official Video) \nft. Rihanna, Bryson Tiller',
              counter: '2 Mn',
              day: 'Today',
              userName: 'Rihanna',
              userImage:
                  'https://www.billboard.com/wp-content/uploads/media/rihanna-kiss-it-better-video-2016-billboard-1.jpg?w=650',
              likeCounter: '416k',
            ),
            const SizedBox(
              height: 16,
            ),
            const ContentHeader(
              header: 'Revelant',
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 500,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(scrollDirection: Axis.vertical, children: const [
                RevelantItem(
                  contentImage:
                      'https://i.ytimg.com/vi/VuNIsY6JdUw/maxresdefault.jpg',
                  contentTitle: 'You Belong With Me',
                  counter: '2 Mn',
                  day: 'Today',
                  userName: 'Taylor Swift',
                ),
                SizedBox(
                  height: 16,
                ),
                RevelantItem(
                  contentImage:
                      'https://i.ytimg.com/vi/VuNIsY6JdUw/maxresdefault.jpg',
                  contentTitle: 'You Belong With Me',
                  counter: '2 Mn',
                  day: 'Today',
                  userName: 'Taylor Swift',
                ),
                SizedBox(
                  height: 16,
                ),
                RevelantItem(
                  contentImage:
                      'https://i.ytimg.com/vi/VuNIsY6JdUw/maxresdefault.jpg',
                  contentTitle: 'You Belong With Me',
                  counter: '2 Mn',
                  day: 'Today',
                  userName: 'Taylor Swift',
                ),
                SizedBox(
                  height: 16,
                ),
                RevelantItem(
                  contentImage:
                      'https://i.ytimg.com/vi/VuNIsY6JdUw/maxresdefault.jpg',
                  contentTitle: 'You Belong With Me',
                  counter: '2 Mn',
                  day: 'Today',
                  userName: 'Taylor Swift',
                ),
                SizedBox(
                  height: 16,
                ),
                RevelantItem(
                  contentImage:
                      'https://i.ytimg.com/vi/VuNIsY6JdUw/maxresdefault.jpg',
                  contentTitle: 'You Belong With Me',
                  counter: '2 Mn',
                  day: 'Today',
                  userName: 'Taylor Swift',
                )
              ]),
            )
          ],
        ),
      )),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        color: bgColor,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  "assets/icons/arrow-left.svg",
                  color: primaryColor,
                  width: 24,
                )),
            const SizedBox(
              width: 208,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  color: primaryColor,
                  height: 24,
                )),
            const SizedBox(
              width: 16,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/bookmark.svg",
                  color: primaryColor,
                  height: 24,
                )),
            const SizedBox(
              width: 16,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/more2.svg",
                  color: primaryColor,
                  height: 24,
                )),
          ],
        ),
      ),
    );
  }
}
