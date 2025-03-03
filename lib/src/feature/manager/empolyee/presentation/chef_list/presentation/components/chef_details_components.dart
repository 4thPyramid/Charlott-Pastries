import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../../../core/theme/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../../home/presentation/widgets/custom_title.dart';
import '../../../../../home/presentation/widgets/newest_order_card_item.dart';
import '../../../../data/model/chef_details_response.dart';
import '../../../delivery/presentation/widgets/select_chef_and_delivery_button.dart';
import '../../../logic/select/select_chef_delivery_cubit.dart';
import '../../logic/chef_details_cubit.dart';
import '../../logic/chef_details_state.dart';
import '../widgets/chef_details_card_item.dart';
import '../widgets/connect_with_chef_card.dart';

class ChefDetailsComponents extends StatelessWidget {
  const ChefDetailsComponents(
      {super.key, required this.chefId, required this.orderId});
  final int chefId;
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ChefDetailsCubit>()..getChefDetails(chefId),
        ),
        BlocProvider(
          create: (context) => getIt<SelectChefAndDeliveryCubit>(),
        ),
      ],
      child: BlocBuilder<ChefDetailsCubit, ChefDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const LoadingIndicator(),
            failure: (error) => ErrorView(
              error: error.message,
              onRetry: () =>
                  context.read<ChefDetailsCubit>().getChefDetails(chefId),
            ),
            success: (chefDetails) => _BuildSuccessView(
              chef: chefDetails.chef,
              orderId: orderId,
            ),
          );
        },
      ),
    );
  }
}

class _BuildSuccessView extends StatelessWidget {
  const _BuildSuccessView({required this.chef, required this.orderId});
  final Chef chef;
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChefAndDeliveryDetailsCardItem(
            name: chef.firstName,
            specialization: chef.specialization,
            status:
                chef.canTakeOrder, // You might want to add this to your model
            avatarUrl: chef.image ??
                'https://th.bing.com/th/id/OIP.0JACtqG8smk4f-Mc7LfI2gHaH6?w=184&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            ordersCount: chef.completedOrdersCount,
          ),
          SizedBox(height: 20.h),
          CustomTitle(title: AppStrings.aboutChef.tr()),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(0, 1),
                    blurRadius: 1,
                  ),
                ]),
            child: Text(
              chef.bio,
              style: AppStyles.s14.copyWith(
                color: AppColors.greyForText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          CustomTitle(title: AppStrings.connectWithChef.tr()),
          SizedBox(height: 20.h),
          ConnectWithChefCard(
            email: chef.email,
            phone: chef.phone,
          ),
          SizedBox(height: 20.h),
           CustomTitle(title: AppStrings.currentOrderList.tr()),
          SizedBox(height: 20.h),
          _BuildOrdersList(orders: chef.orders),
          SizedBox(height: 40.h),
          Align(
              child: SelectChefOrDeliveryButton(
            id: chef.id,
            orderId: orderId,
            isChef: true,
          )),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}

class _BuildOrdersList extends StatelessWidget {
  const _BuildOrdersList({required this.orders});
  final List<ChefOrder> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: orders.length,
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      itemBuilder: (context, index) {
        final order = orders[index];
        return NewestOrdersCardItem(
          orderId: order.deliveryId ?? 0,
          orderName: order.orderType,
          date: order.deliveryDate ?? '',
        );
      },
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.error,
    required this.onRetry,
  });

  final String error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error),
          SizedBox(height: 10.h),
          CustomButton(
            text: 'إعادة المحاولة',
            onPressed: onRetry,
          ),
        ],
      ),
    );
  }
}
