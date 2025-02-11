import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/AllReadyOrders/get_ready_orders_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReadyProductsForm extends StatelessWidget {
  const ReadyProductsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<GetReadyOrdersCubit, GetReadyOrdersState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            ready: (data) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8.0),
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => ProductCardWidget(
                  image:
                      data[index].products[index].image ?? 'default_image_path',
                  title: data[index].products[index].name,
                  price: data[index].products[index].name,
                ),
              ),
            ),
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            error: (ErrorModel error) {
              return Center(child: Text(error.message));
            },
          );
        },
      ),
    );
  }
}
