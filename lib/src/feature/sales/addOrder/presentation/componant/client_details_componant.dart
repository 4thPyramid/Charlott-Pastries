import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/addOrder/add_order_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/client_datails_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
class ClientDetailsComponant extends StatelessWidget {
  ClientDetailsComponant({
    super.key,
    required this.lat,
    required this.long,
    required this.address,
    required this.orderId,
    required this.isSameday,
  });

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final String lat;
  final String long;
  final String address;
  final int orderId;
  final String isSameday;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (data, isSameDay) {
            if (isSameday == "1") {
              context.push(RouterNames.salesSelectDeliveryView,
                  extra: {'orderId': orderId});
            } else {
              context.push(RouterNames.salesBottomNavigationBarRoot);
            }
          },
          failure: (error, isLoading) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error.toString())));
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: ClientDatailsForm(
            nameController: nameController,
            phoneController: phoneController,
            addressController: addressController,
            onPressed: () {
              if (!_formKey.currentState!.validate()) {
                return;
              }

              final request = AddCustomerRequestModel(
                customerName: nameController.text,
                customerPhone: phoneController.text,
                longitude: long,
                latitude: lat,
                mapDesc: address,
                additionalData: addressController.text,
              );

              context.read<AddOrderCubit>().addClientData(request, orderId);
            },
          ),
        );
      },
    );
  }
}
