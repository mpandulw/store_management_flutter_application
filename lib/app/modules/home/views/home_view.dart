import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.indexBottomNav.value,
          children: controller.pages,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add-transaction'),
        backgroundColor: const Color(0xFF393E46),
        child: const Icon(Icons.add_rounded, color: Color(0xFF00ADB5)),
      ),

      bottomNavigationBar: Obx(
        () => Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            color: const Color(0xFF393E46),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Home icon button
              AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                transform: Matrix4.translationValues(
                  0,
                  controller.indexBottomNav.value == 0 ? -5 : 0,
                  0,
                ),
                child: IconButton(
                  onPressed: () => controller.changeIndexBottomNav(0),
                  icon: Icon(
                    Icons.home_rounded,
                    color: controller.indexBottomNav.value == 0
                        ? const Color(0xFF00ADB5)
                        : const Color.fromARGB(255, 0, 120, 126),
                  ),
                ),
              ),

              // Stock icon button
              AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                transform: Matrix4.translationValues(
                  0,
                  controller.indexBottomNav.value == 1 ? -5 : 0,
                  0,
                ),
                child: IconButton(
                  onPressed: () => controller.changeIndexBottomNav(1),
                  icon: Iconify(
                    Mdi.package,
                    color: controller.indexBottomNav.value == 1
                        ? const Color(0xFF00ADB5)
                        : const Color.fromARGB(255, 0, 120, 126),
                  ),
                ),
              ),

              // Price list icon button
              AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                transform: Matrix4.translationValues(
                  0,
                  controller.indexBottomNav.value == 2 ? -5 : 0,
                  0,
                ),
                child: IconButton(
                  onPressed: () => controller.changeIndexBottomNav(2),
                  icon: Iconify(
                    Mdi.document,
                    color: controller.indexBottomNav.value == 2
                        ? const Color(0xFF00ADB5)
                        : const Color.fromARGB(255, 0, 120, 126),
                  ),
                ),
              ),

              // History icon button
              AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                transform: Matrix4.translationValues(
                  0,
                  controller.indexBottomNav.value == 3 ? -5 : 0,
                  0,
                ),
                child: IconButton(
                  onPressed: () => controller.changeIndexBottomNav(3),
                  icon: Icon(
                    Icons.history_rounded,
                    color: controller.indexBottomNav.value == 3
                        ? const Color(0xFF00ADB5)
                        : const Color.fromARGB(255, 0, 120, 126),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home App Bar')),
      body: Column(
        children: [
          Obx(() => Text(controller.savedText.value)),
          TextField(onChanged: (value) => controller.savedText.value = value),
          TextButton(
            onPressed: () => controller.saveText(),
            child: const Text('Save Text'),
          ),
        ],
      ),
    );
  }
}
