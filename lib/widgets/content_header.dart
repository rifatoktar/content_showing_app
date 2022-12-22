import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constant.dart';

class ContentHeader extends StatelessWidget {
  final String header;
  const ContentHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            header,
            style: Constant.header,
          ),
          const Spacer(),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/arrow-right.svg",
                height: 20,
                color: primaryColor,
              ))
        ],
      ),
    );
  }
}
