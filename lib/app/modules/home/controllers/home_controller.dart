import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/history/views/history_view.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/home/views/home_view.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/price-list/views/price_list_view.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/stock/views/stock_view.dart';

class HomeController extends GetxController {
  final indexBottomNav = 0.obs;

  final pages = <Widget>[Home(), StockView(), PriceListView(), HistoryView()];

  void changeIndexBottomNav(int index) {
    indexBottomNav.value = index;
  }
}
