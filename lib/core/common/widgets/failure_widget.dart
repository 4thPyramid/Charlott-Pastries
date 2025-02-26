import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.iconSize,
  });
  final String title;
  final String subtitle;
  final IconData? icon;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: iconSize ?? 200.h,
            child: Icon(icon ?? Icons.add_shopping_cart_sharp,
                size: 200, color: Colors.grey[300]),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
