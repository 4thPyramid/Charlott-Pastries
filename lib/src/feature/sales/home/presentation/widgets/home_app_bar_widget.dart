import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.name1});
  final String? name1;
  @override
  Widget build(BuildContext context) {
    final String? name = CacheHelper.getData(key: 'name');
    final String? image = CacheHelper.getData(key: 'image');

    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text("اهلا بك",
          style: AppStyles.s12.copyWith(
            color: AppColors.darkTextGrey,
            fontWeight: FontWeight.w700,
          )),
      subtitle: Text(name ?? '',
          style: AppStyles.s14.copyWith(
            fontWeight: FontWeight.w600,
          )),
      trailing: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.network(
            image??"https://imgs.search.brave.com/J5-KJNoclGIgO9mgbMuULm8xw_ri-hvqZYOyhc50Q64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE3LzM0LzY3/LzM2MF9GXzIxNzM0/Njc4Ml83WHBDVHQ4/YkxOSnF2VkFhRFpK/d3Zaam0wZXBRbWo2/ai5qcGc",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
    
    );
  }
}
