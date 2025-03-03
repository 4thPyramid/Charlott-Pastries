import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../components/accept_employee_components.dart';

class AcceptEmployeeView extends StatelessWidget {
  const AcceptEmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal:10.w),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CustomAppBar(
              title:AppStrings.addEmployees.tr(),
            ),
            
         const SizedBox(
               //height: MediaQuery.of(context).size.height * 0.9, 
               child: AcceptEmployeeComponents(),
             ),
          ],
        ));
  }
}

