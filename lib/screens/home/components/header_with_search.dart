import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20 * 2.5),
      // by this calculations it will take 20% of the total height
      height: size.height * 0.3,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 56),
            height: size.height * 0.3 - 30,
            decoration: const BoxDecoration(
                color: Color(0xFF0C9869),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              children: [
                Text(
                  'Hi Abdelrahman!',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: 54,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF0C9869).withOpacity(0.23),
                          blurRadius: 50,
                          offset: Offset(0, 10))
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: 'Search ...',
                          hintStyle: TextStyle(
                              color: Color(0xFF0C9869).withOpacity(0.6)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffixIcon: // Doesn't work very good with svg so we will replace it with row for those items
                          //     SvgPicture.asset('assets/icons/search.svg')
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg')
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
