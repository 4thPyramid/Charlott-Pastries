import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/manager/search/data/model/manager_search_model.dart';
import 'package:charlot/src/feature/manager/search/presentation/cubit/manager_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:go_router/go_router.dart';

class ManagerSearchView extends StatefulWidget {
  const ManagerSearchView({super.key});

  @override
  State<ManagerSearchView> createState() => _ManagerSearchViewState();
}

class _ManagerSearchViewState extends State<ManagerSearchView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Orders", style: AppStyles.s18),
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SearchBar(
              controller: _searchController,
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              onChanged: (query) {
                context.read<ManagerSearchCubit>().search(query);
              },
              leading: const Icon(Icons.search, color: AppColors.darkTextGrey),
              hintText: "Search for orders",
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shadowColor: WidgetStateProperty.all(Colors.white),
              elevation: WidgetStateProperty.all(1),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<ManagerSearchCubit, ManagerSearchState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => _buildMessage("Start searching..."),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (order) => _buildResultsList(order),
                    error: (error) =>
                        _buildMessage("حدث خطأ: ${error.message}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultsList(List<ManagerSearchModel> orders) {
    if (orders.isEmpty) {
      return _buildMessage("No matching orders found.");
    }

    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(order.customerName ?? "", style: AppStyles.s18),
              subtitle: Text(
                  "Order Type: ${order.orderType} | Status: ${order.status}"),
              trailing: Text(order.deliveryDate ?? 'N/A'),
              onTap: () {
                context.push(RouterNames.ordersDetails, extra: {
                  "orderId": order.id,
                });
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessage(String message) {
    return Center(
      child: Text(message, style: AppStyles.s18.copyWith(color: Colors.grey)),
    );
  }
}
