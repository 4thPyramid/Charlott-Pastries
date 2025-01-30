import 'package:charlot/core/app_cubit/app_cubit.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/email_and_phone_tap_bar.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/products_grid_view.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/requset_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/order_type_taps';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequsetTypeForm extends StatefulWidget {
  const RequsetTypeForm({Key? key}) : super(key: key);

  @override
  State<RequsetTypeForm> createState() => _RequsetTypeFormState();
}

class _RequsetTypeFormState extends State<RequsetTypeForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              RequestTypeTaps(
                tabController: _tabController,
              ),
              SizedBox(
                height: 800.h,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    RequestForm(),
                    ReadyProductsForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
