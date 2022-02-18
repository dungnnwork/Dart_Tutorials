import 'package:flutter/material.dart';
import 'package:pit_pit_food/constants.dart';
import 'package:pit_pit_food/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Tìm món ăn",
          prefixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(10),
          ),
        ),
      ),
    );
  }
}
