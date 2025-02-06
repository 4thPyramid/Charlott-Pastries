import 'package:charlot/src/feature/manager/empolyee/presentation/logic/select/select_chef_delivery_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../../../core/services/service_locator.dart';
import '../../../../../home/presentation/widgets/newest_order_card_item.dart';
import '../../../../data/model/delivery_details_response.dart';
import '../../../chef_list/presentation/widgets/chef_details_card_item.dart';
import '../../../chef_list/presentation/widgets/connect_with_chef_card.dart';
import '../../../../../home/presentation/widgets/custom_title.dart';
import '../../logic/delivery_details_cubit.dart';
import '../../logic/delivery_details_state.dart';
import '../widgets/select_chef_and_delivery_button.dart';

class DeliveryDetailsComponents extends StatelessWidget {
  const DeliveryDetailsComponents(
      {super.key, required this.deliveryId, required this.orderId});
  final int deliveryId;
  final int orderId;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<DeliveryDetailsCubit>()..getDeliveryDetails(deliveryId),
        ),
        BlocProvider(
          create: (context) => getIt<SelectChefAndDeliveryCubit>(),
        ),
      ],
      child: BlocBuilder<DeliveryDetailsCubit, DeliveryDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const LoadingIndicator(),
            failure: (error) => ErrorView(
              error: error.message,
              onRetry: () => context
                  .read<DeliveryDetailsCubit>()
                  .getDeliveryDetails(deliveryId),
            ),
            success: (deliveryDetails) => _BuildSuccessView(
                delivery: deliveryDetails.delivery, orderId: orderId),
          );
        },
      ),
    );
  }
}

class _BuildSuccessView extends StatelessWidget {
  const _BuildSuccessView({required this.delivery, required this.orderId});
  final Delivery delivery;
  final int orderId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChefAndDeliveryDetailsCardItem(
            name: '${delivery.firstName} ${delivery.lastName}',
            specialization: delivery.phone,
            status: delivery
                .canTakeOrder, // You might want to add this to your model
            avatarUrl: delivery.image ??
                'https://th.bing.com/th/id/OIP.ICeLPFhbpA6fkR1vJKGvvwHaHa?w=162&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            ordersCount: delivery.deliveredOrdersCount,
          ),
          SizedBox(height: 20.h),
          const CustomTitle(title: 'طرق التواصل بالمندوب'),
          SizedBox(height: 20.h),
          ConnectWithChefCard(
            email: delivery.email,
            phone: delivery.phone,
          ),
          SizedBox(height: 20.h),
          const CustomTitle(title: 'قائمه الطلباتة الحاليه'),
          SizedBox(height: 20.h),
          _BuildOrdersList(orders: delivery.orders),
          SizedBox(height: 40.h),
          Align(
              child: SelectChefOrDeliveryButton(
            id: delivery.id,
            orderId: orderId,
            isChef: false,
          )),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}

class _BuildOrdersList extends StatelessWidget {
  const _BuildOrdersList({required this.orders});
  final List<DeliveryOrder> orders;

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
          orderType: order.orderType,
          orderName: order.orderDetails ?? '',
          date: order.deliveryDate,
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
