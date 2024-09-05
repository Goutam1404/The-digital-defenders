import 'package:flutter/material.dart';
import 'package:practice/utils/quotes.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget {
  // const CustomAppbar({super.key});
  Function? onTap;
  int? quoteIndex;
  CustomAppbar({this.onTap, this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        child: Text(
          thoughts[quoteIndex!],
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
