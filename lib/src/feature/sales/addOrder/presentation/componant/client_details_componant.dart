import 'package:charlot/core/common/widgets/shared_order_item_card.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/cubit/add_order_cubit.dart';
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
  });

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final String lat;
  final String long;
  final String address;
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (data) =>
              context.go(RouterNames.salesBottomNavigationBarRoot),
          failure: (error) => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error.toString()))),
        );
      },
      builder: (context, state) {
        return ClientDatailsForm(
          nameController: nameController,
          phoneController: phoneController,
          addressController: addressController,
          onPressed: () {
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
        );
      },
    );
  }
}
