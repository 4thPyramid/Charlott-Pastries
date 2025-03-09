import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/client_datails_form.dart';
import 'package:flutter/material.dart';

class UpdateClient extends StatelessWidget {
  UpdateClient({
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
        },
      ),
    );
  }
}
