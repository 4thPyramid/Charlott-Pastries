import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/AllReadyOrders/get_ready_orders_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ReadyProductsForm extends StatelessWidget {
  const ReadyProductsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<GetReadyOrdersCubit, GetReadyOrdersState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            ready: (data) {
              final allProducts =
                  data.expand((model) => model.products).toList();

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8.0),
                  itemCount: allProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final product = allProducts[index];

                    return ProductCardWidget(
                      image: product.image ?? AppAssets.addOrder1,
                      title: product.name,
                      price: product.name,
                      onTap: () {
                        context.push(
                            "${RouterNames.readyOrderDetailsView}/${product.id}");
                      },
                    );
                  },
                ),
              );
            },
            initial: () => const Center(child: CircularProgressIndicator()),
            error: (ErrorModel error) => Center(child: Text(error.message)),
          );
        },
      ),
    );
  }
}
