import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/datails_field.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/image_picker_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../widgets/date_row_widget.dart';
import '../widgets/order_type_taps';
import '../widgets/quantity_selector.dart';
import '../widgets/request_type_drop_down.dart';
import '../widgets/show_time_picker.dart';
import 'flower_selection.dart';

class RequestTypeForm extends StatefulWidget {
  const RequestTypeForm({Key? key}) : super(key: key);

  @override
  State<RequestTypeForm> createState() => _RequestTypeFormState();
}

class _RequestTypeFormState extends State<RequestTypeForm> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? selectedType;

  // Define form visibility flags
  bool showCakeFields = false;
  bool showFlowerFields = false;

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

  void _handleTypeSelection(String? value) {
    setState(() {
      selectedType = value;
      
      // Update visibility flags based on selection
      switch (value) {
        case 'تورته':
          showCakeFields = true;
          showFlowerFields = false;
          break;
        case 'ورد':
          showCakeFields = false;
          showFlowerFields = true;
          break;
        case 'تورته مع ورد':
          showCakeFields = true;
          showFlowerFields = true;
          break;
        default:
          showCakeFields = false;
          showFlowerFields = false;
      }
    });
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    RequestTypeDropdown(
                      value: selectedType,
                      onChanged: _handleTypeSelection,
                    ),
                    SizedBox(height: 16.h),
                    
                    // Conditional Cake Form Fields
                    if (showCakeFields) ...[
                     
                      const DetailsField(text: 'تفاصيل طلب الكيك',),
                      SizedBox(
                        height: 20.h,
                      ),
                       Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    const QuantitySelector(),
    const Spacer(),
    DeliveryTimePicker(),
  ],
),
                      SizedBox(height: 16.h),
                       const DateRowWidget(),
                       SizedBox(height: 21.h),
                    const ImagePickerSection(text: 'اضافه صور الكيك',),
                    ],

                    // Conditional Flower Form Fields
                    if (showFlowerFields) ...[
                        SizedBox(
                          height: 40.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('تفاصيل طلب الورد',style: AppStyles.s14.copyWith(fontWeight: FontWeight.w700,),),
                            ],
                          ),
                        ),
                      
                       FlowerSelectionDropdowns(onTypeChanged: (String? value) {  }, onColorChanged: (String? value) {  },),
                       SizedBox(height: 20.h),
                        Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    const QuantitySelector(),
    const Spacer(),
    DeliveryTimePicker(),
  ],                 
),
                      SizedBox(height: 16.h),
                      const DateRowWidget(),
                       SizedBox(height: 20.h),

                    const ImagePickerSection(text: 'اضافه صور الورد',),
                    ],

                    // Common Fields
                   
                    SizedBox(height: 16.h),

                    Center(
                      child: CustomButton(
                        text: "التالي",
                        onPressed: () {
                          if (formKey.currentState?.validate() ?? false) {
                            context.go(RouterNames.priceDetailsView);
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 50.h),
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