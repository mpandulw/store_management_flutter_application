import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/price_list_controller.dart';

class PriceListView extends GetView<PriceListController> {
  const PriceListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PriceListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PriceListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
