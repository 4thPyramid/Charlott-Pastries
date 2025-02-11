import 'package:charlot/src/feature/orderDetails/presentation/components/client_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_data.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_price.dart';
import 'package:charlot/src/feature/orderDetails/presentation/components/order_times.dart';
import 'package:charlot/src/feature/sales/orderDetails/presentation/cubit/sales_order_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesOrderDetailsContent extends StatelessWidget {
  const SalesOrderDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesOrderDetailsCubit, SalesOrderDetailsState>(
      builder: (context, state) {
        return state.when(
            initial: () => const Center(child: Text('جاري التحميل...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) =>
                Center(child: Text('حدث خطأ: ${error.message}')),
            success: (orderDetailsResponse) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OrderTimes(
                    orderStatus: orderDetailsResponse.order.status,
                    startAt: orderDetailsResponse.order.createdAt,
                    endAt: orderDetailsResponse.order.updatedAt,
                  ),
                  SizedBox(height: 16.h),
                  ClientData(
                    customerName: orderDetailsResponse.order.customerName,
                    customerPhone: orderDetailsResponse.order.customerPhone,
                    customerAddress:
                        orderDetailsResponse.order.additionalData ??
                            'لم يتم اضافه عنوان',
                  ),
                  // TeamData(
                  //   chefName: orderDetailsResponse.order.chefName,
                  //   deliveryName: orderDetailsResponse.deliveryName,
                  // ),
                  OrderData(
                    orderDetails: orderDetailsResponse.order.orderDetails,
                    orderType: orderDetailsResponse.order.orderType,
                    quantity: orderDetailsResponse.order.quantity,
                  ),
                  OrderPrice(
                    price: orderDetailsResponse.order.price,
                    deposit: orderDetailsResponse.order.deposit ?? 0.0,
                    remaining: orderDetailsResponse.order.remaining ?? 0.0,
                  ),
                  SizedBox(height: 16.h),
                ],
              );
            });
      },
    );
  }
}
