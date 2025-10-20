import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/history/views/history_view.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/home/views/home_view.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/price-list/views/price_list_view.dart';
import 'package:inkcome_fotocopy_flutter_application/app/modules/stock/views/stock_view.dart';

class HomeController extends GetxController {
  final indexBottomNav = 0.obs;
  final savedText = ''.obs;
  final pages = <Widget>[Home(), StockView(), PriceListView(), HistoryView()];

  late Box box;

  @override
  void onInit() async {
    super.onInit();
    box = await Hive.openBox('general');
    savedText.value = box.get('text') ?? 'There is no text saved';
  }

  void changeIndexBottomNav(int index) {
    indexBottomNav.value = index;
  }

  Future<void> saveText() async {
    box.put('text', savedText.value);
  }
}
