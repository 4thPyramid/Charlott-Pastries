import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/sales/search/presentation/cubit/sales_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:go_router/go_router.dart';

class SalesSearchView extends StatefulWidget {
  const SalesSearchView({super.key});

  @override
  State<SalesSearchView> createState() => _SalesSearchViewState();
}

class _SalesSearchViewState extends State<SalesSearchView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("بحث الطلبات", style: AppStyles.s18),
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
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SearchBar(
              controller: _searchController,
              onChanged: (query) {
                context.read<SalesSearchCubit>().search(query);
              },
              leading: const Icon(Icons.search, color: AppColors.darkTextGrey),
              hintText: "ابحث عن طلب معين",
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shadowColor: WidgetStateProperty.all(Colors.white),
              elevation: WidgetStateProperty.all(1),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<SalesSearchCubit, SalesSearchState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => _buildMessage("ابدأ البحث عن الطلبات"),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (sales) => _buildResultsList(sales),
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

  Widget _buildResultsList(List<SalesSearchModel> sales) {
    if (sales.isEmpty) {
      return _buildMessage("لا توجد طلبات متطابقة");
    }

    return ListView.builder(
      itemCount: sales.length,
      itemBuilder: (context, index) {
        final order = sales[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(order.customerName, style: AppStyles.s18),
              subtitle:
                  Text("النوع: ${order.orderType} | الحالة: ${order.status}"),
              trailing: Text(order.deliveryDate),
              onTap: () {
                context.push("${RouterNames.salesOrderDetails}/${order.id}");
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
