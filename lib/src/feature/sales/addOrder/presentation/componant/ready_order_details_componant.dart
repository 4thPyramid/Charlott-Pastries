import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/componant/price_form.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/SingelReadyOrder/ready_order_details_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/logic/storeReadyOrder/ready_ordre_cubit.dart';
import 'package:charlot/src/feature/sales/addOrder/presentation/widgets/ready_order_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ReadyOrderDetailsComponant extends StatelessWidget {
  const ReadyOrderDetailsComponant({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadyOrderDetailsCubit, ReadyOrderDetailsState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          ready: (data) => BlocConsumer<StoreReadyOrdreCubit, ReadyOrdreState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () {},
                ready: (response) {
                  context.go("${RouterNames.priceDetailsView}/${response.id}");
                },
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error.message),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return ReadyOrderContentWidget(
                orderImage: data.image,
                orderName: data.name,
                branch: data.branch.name,
                orderPrice: "4444",
                orderDescription: data.description,
                onTap: () {
                  context
                      .read<StoreReadyOrdreCubit>()
                      .storeReadyOrders(data.id, 1);
                  print("******${data.id}******");
                },
              );
            },
          ),
          initial: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (error) {
            return Center(child: Text(error.message));
          },
        );
      },
    );
  }
}
