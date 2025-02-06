import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIntroImage extends StatelessWidget {
  const HomeIntroImage({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 352.w,
        height: 194.h,
        decoration:  BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      //  child: Image.asset(AppAssets.home),
      );
    
  }
}
