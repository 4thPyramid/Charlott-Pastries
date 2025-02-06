import 'package:charlot/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/common/banner_feature/presentation/logic/cubit/banner_cubit.dart';
import 'package:charlot/src/feature/sales/home/presentation/widgets/home_intro_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BannerCubit>()..getBanners(),
      child: BlocBuilder<BannerCubit, BannerState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            Loading: () => const Center(child: CircularProgressIndicator()),
            Loaded: (banners) => SizedBox(
              height: 194.h,
              width: 352.w,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: banners.length,
                itemBuilder: (BuildContext context, int index) {
                  return HomeIntroImage(
                    image: banners[index].image ?? AppAssets.home,
                  );
                },
              ),
            ),
            error: (error) => Center(child: Text(error.message)),
          );
        },
      ),
    );
  }
}
