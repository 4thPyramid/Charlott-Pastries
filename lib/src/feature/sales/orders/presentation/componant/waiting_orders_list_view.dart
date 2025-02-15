import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/widgets/shared_order_item_card.dart';
import '../../../../manager/orders/data/model/orders_response.dart';

// class WaitingOrdersListView extends StatelessWidget {
//   const WaitingOrdersListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: SizedBox(
//         child: ListView.builder(
//           padding: EdgeInsets.symmetric(horizontal: 10.w),
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             return  Padding(
//               padding:const EdgeInsets.symmetric(vertical: 10),
//               child: SharedOrderItemCard(
//               orderResponse:  Order(
//                     id: 1,
//                     customerName: "customerName",
//                     orderType: "orderType",
//                     status: "status"), 
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
