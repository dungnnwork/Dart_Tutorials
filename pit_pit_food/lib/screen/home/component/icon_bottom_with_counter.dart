import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBottomWithCounter extends StatelessWidget {
  const IconBottomWithCounter(
      {Key? key, required this.svgSrc, this.numOfItem = 0, required this.press})
      : super(key: key);
  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(100),
      child: numOfItem != 0
          ? Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(12),
                  ),
                  width: getProportionateScreenWidth(46),
                  height: getProportionateScreenHeight(46),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(svgSrc),
                ),
                Positioned(
                  right: 0,
                  top: -3,
                  child: Container(
                    height: getProportionateScreenHeight(16),
                    width: getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                      color: const Color(0XFFFF4848),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '$numOfItem',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(10),
                            height: 1,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(12),
                  ),
                  width: getProportionateScreenWidth(46),
                  height: getProportionateScreenHeight(46),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(svgSrc),
                ),
              ],
            ),
    );
  }
}
