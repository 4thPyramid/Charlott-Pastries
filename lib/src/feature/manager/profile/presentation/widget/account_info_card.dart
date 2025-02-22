import 'package:flutter/material.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class AccountInfoCard extends StatelessWidget {
  const AccountInfoCard({
    super.key,
    required this.name,
    required this.phone,
    this.image,
  });
  final String name;
  final String phone;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 50,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            image ??
                "https://imgs.search.brave.com/J5-KJNoclGIgO9mgbMuULm8xw_ri-hvqZYOyhc50Q64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE3LzM0LzY3/LzM2MF9GXzIxNzM0/Njc4Ml83WHBDVHQ4/YkxOSnF2VkFhRFpK/d3Zaam0wZXBRbWo2/ai5qcGc",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        name,
        style: AppStyles.s20.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        phone,
        style: AppStyles.s14.copyWith(
          color: AppColors.whiteGreyForText,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
