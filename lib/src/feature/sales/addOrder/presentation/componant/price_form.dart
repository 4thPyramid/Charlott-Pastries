import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_form_field.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PriceForm extends StatefulWidget {
  const PriceForm({super.key, required this.orderId});
  final int orderId;

  @override
  State<PriceForm> createState() => _PriceFormState();
}

class _PriceFormState extends State<PriceForm> {
  final TextEditingController depositController = TextEditingController();
  final TextEditingController deliveryPriceController = TextEditingController();
  final TextEditingController cakePriceController = TextEditingController();
  final TextEditingController flowerPriceController = TextEditingController();

  double totalPrice = 0.0;
  @override
  void initState() {
    super.initState();
    calculateTotalPrice();
  }

  void calculateTotalPrice() {
    final double cakePrice = double.tryParse(cakePriceController.text) ?? 0.0;
    final double flowerPrice =
        double.tryParse(flowerPriceController.text) ?? 0.0;
    final double deliveryPrice =
        double.tryParse(deliveryPriceController.text) ?? 0.0;
    final double deposit = double.tryParse(depositController.text) ?? 0.0;

    setState(() {
      totalPrice = (cakePrice + flowerPrice + deliveryPrice) - deposit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Text("Cake Price",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Enter the cake price',
            validator: (value) => value == null || value.isEmpty
                ? 'Please enter the cake price'
                : null,
            prefixIcon:
                const Icon(Icons.cake, size: 30, color: AppColors.primaryColor),
            controller: cakePriceController,
            onEditingComplete:
                calculateTotalPrice, // 🔥 يحسب المجموع عند الخروج من الحقل
          ),
          SizedBox(height: 10.h),
          Text("Flower Price",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Enter the flower price',
            validator: (value) => value == null || value.isEmpty
                ? 'Please enter the flower price'
                : null,
            prefixIcon:
                const Icon(Icons.money, size: 30, color: AppColors.green),
            controller: flowerPriceController,
            onEditingComplete: calculateTotalPrice,
            onTap: () {
              setState(() {
                calculateTotalPrice();
              });
            },
          ),
          SizedBox(height: 10.h),
          Text("Delivery Price",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Enter the delivery price',
            validator: (value) => value == null || value.isEmpty
                ? 'Please enter the delivery price'
                : null,
            prefixIcon: const Icon(Icons.attach_money_rounded,
                size: 30, color: AppColors.orange),
            controller: deliveryPriceController,
            onEditingComplete: () {
              calculateTotalPrice();
              setState(() {});
            },
          ),
          SizedBox(height: 10.h),
          Text("Deposit",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            hintText: 'Enter the deposit if it exists',
            validator: (value) => null,
            prefixIcon: const Icon(Icons.motion_photos_pause_rounded,
                size: 30, color: AppColors.blue),
            controller: depositController,
            onEditingComplete: () {
              calculateTotalPrice();
              setState(() {});
            },
          ),
          SizedBox(height: 20.h),
          Text(
            "Total Price: ${totalPrice.toStringAsFixed(2)}",
            style: AppStyles.s16.copyWith(
                fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          ),
          SizedBox(height: 20.h),
          Center(
            child: BlocListener<AddOrderCubit, AddOrderState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (message, _) =>
                      context.go("${RouterNames.mapPicker}/${widget.orderId}"),
                  failure: (error, _) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error.message)),
                  ),
                );
              },
              child: BlocBuilder<AddOrderCubit, AddOrderState>(
                builder: (context, state) {
                  return CustomButton(
                    text: "Next",
                    onPressed: () {
                      final request = AddPriceRequestModel(
                        price: cakePriceController.text,
                        deposit: depositController.text,
                        remaining: "",
                        deliveryPrice: deliveryPriceController.text,
                        totalPrice: totalPrice.toString(),
                        flowerPrice: flowerPriceController.text,
                      );
                      context
                          .read<AddOrderCubit>()
                          .addOrderPrice(request, widget.orderId);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
