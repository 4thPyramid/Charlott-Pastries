//  import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../logic/all_employee/all_employee_cubit.dart';
// import '../logic/all_employee/all_employee_state.dart';
// import '../logic/employee_action/employee_action_cubit.dart';
// import 'accept_employee_card_item.dart';
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
// Widget buildChefList(AllEmployeeState state) {
//     if (state is AllEmployeeSuccess) {
//       final chefs = state.chefResponse.chef;
//       return 
//          ListView.builder(
//           shrinkWrap: true,
//           padding: const EdgeInsets.all(0),
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: chefs.length,
//           itemBuilder: (context, index) {
//             return AcceptEmployeeCardItem(
//               employee: chefs[index],
//               isChef: true, // Specify it's a chef
//               onAccept: (id) {
//                 context.read<EmployeeActionCubit>().acceptChef(id).then((_) {
//                   setState(() {
//                     BlocProvider.of<AllEmployeeCubit>(context).getAllEmployee();
//                   });
//                 });
//               },
//               onReject: (id) {
//                 context.read<EmployeeActionCubit>().rejectChef(id).then((_) {
//                   setState(() {
//                     BlocProvider.of<AllEmployeeCubit>(context).getAllEmployee();
//                   });
//                 });
//               },
//             );
//           },
       
//       );
//     } else if (state is AllEmployeeLoading) {
//       return const Center(child: CircularProgressIndicator());
//     } else if (state is AllEmployeeFailure) {
//       return Center(child: Text(state.errorMessage.message));
//     } else {
//       return const SizedBox.shrink();
//     }
//   }