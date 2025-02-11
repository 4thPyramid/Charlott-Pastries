// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class OrderActionBottonsWidget extends StatelessWidget {
//   const OrderActionBottonsWidget({
//     super.key,
//     required this.orderId,
//   });
//   final int orderId;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OrderAcctionsCubit, OrderAcctionsState>(
//       builder: (context, state) {
//         return state.when(
//           initial: () {
//             return BottonsWidget(
//               doneOnPressed: () {
//                 context
//                     .read<OrderAcctionsCubit>()
//                     .completeOrder(orderId, "", "");
//               },
//               problemOnPressed: () {
//                 context.read<OrderAcctionsCubit>().cancelOrder(
//                       orderId,
//                     );
//               },
//             );
//           },
//           loading: () => const Center(child: CircularProgressIndicator()),
//           loaded: (successResponse) {
//             final String status = successResponse.message;

//             if (status == "تم توصيل الطلب بنجاح") {
//               return const SizedBox(
//                   child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Center(
//                     child: Text(
//                   "تم التوصيل بنجاح",
//                   style: TextStyle(
//                     color: Colors.green,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )),
//               ));
//             } else if (status == "تم بنجاح") {
//               return const Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Center(
//                   child: SizedBox(
//                       child: Text("تم رفض الطلب من العميل",
//                           style: TextStyle(
//                               color: Colors.red,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold))),
//                 ),
//               );
//             }
//             return BottonsWidget(
//               doneOnPressed: () {},
//               problemOnPressed: () {},
//             );
//           },
//           error: (error) => const SizedBox(
//             child: Text("Error"),
//           ),
//         );
//       },
//     );
//   }
// }
