import 'package:get/get.dart';

import '../modules/add-transaction/bindings/add_transaction_binding.dart';
import '../modules/add-transaction/views/add_transaction_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/price-list/bindings/price_list_binding.dart';
import '../modules/price-list/views/price_list_view.dart';
import '../modules/stock/bindings/stock_binding.dart';
import '../modules/stock/views/stock_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STOCK,
      page: () => const StockView(),
      binding: StockBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.PRICE_LIST,
      page: () => const PriceListView(),
      binding: PriceListBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TRANSACTION,
      page: () => const AddTransactionView(),
      binding: AddTransactionBinding(),
    ),
  ];
}
