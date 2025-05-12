import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/banner_feature/data/model/banner_model.dart';

class HomeIntroImage extends StatefulWidget {
  // final List<String> images;
final List <BannerModel> banners;
  const HomeIntroImage({
    super.key, 
   // required this.images,
     required this.banners,
  });

  @override
  State<HomeIntroImage> createState() => _HomeIntroImageState();
}

class _HomeIntroImageState extends State<HomeIntroImage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 352.w,
      height: 240.h,
      child: Stack(
        children: [
          // PageView for images
          PageView.builder(
            controller: _pageController,

            itemCount: widget.banners.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(widget.banners[index].image),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
          
          // Page indicator dots
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.banners.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index 
                        ? Colors.white 
                        : Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}