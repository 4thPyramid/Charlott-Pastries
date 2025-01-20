import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/main_function.dart';

void logOutPop(BuildContext context) {
  customAlertDialog(
    marginHPadding: 20.h,
    marginVPadding: 20.h,
    hPadding: 12.w,
    vPadding: 12.h,
    context: context,
    // content: BlocConsumer<LogoutCubit, LogoutState>(
    //   listener: (context, state) async {
    //     if (state is LogoutSuccess) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           content: Text(state.message),
    //           backgroundColor: Colors.green,
    //         ),
    //       );
    //       await Future.delayed(
    //           const Duration(milliseconds: 200)); 
    //       if (Navigator.canPop(context)) {
    //         context.pushReplacement(RouterNames.login); 
    //       }
    //     } else if (state is LogoutError) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(content: Text(state.errorMessage.message)),
    //       );
    //     }
    //   },
    //   builder: (context, state) {
       // return
        content:  Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.delete_outline,
                color: AppColors.errorColor,
                size: 50,
              ),
              SizedBox(height: 13.h),
              Text(
                "تسجيل الخروج",
                style: AppStyles.s20.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 39.h),
              Text(
                "هل انت متأكد من تسجيل الخروج؟",
                textAlign: TextAlign.center,
                style: AppStyles.s16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    width: 150.w,
                    backgroundColor: AppColors.errorColor,
                    text: "نعم",
                    textStyle: AppStyles.s12.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    onPressed: 
                         () {}
                       
                  ),
                  CustomButton(
                    width: 150.w,
                    text: " الغاء",
                    backgroundColor: AppColors.white,
                    textStyle: AppStyles.s12.copyWith(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                    onPressed:  () {}
                    // state is LogoutLoading
                    //     ? () {}
                    //     : () => Navigator.pop(context),
                  ),
                ],
              )
            ],
          ),
        ),
  );
}

    
