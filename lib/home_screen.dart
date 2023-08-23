import 'package:flutter/material.dart';
import 'package:flutter_localization/main.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Localization"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Name'.tr),
            subtitle: Text('Designation'.tr),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    box.write("lang", "en");
                    //  box.write("key", "US");
                    Get.updateLocale(const Locale('en', null));
                  },
                  child: const Text("English")),
              ElevatedButton(
                  onPressed: () {
                    box.write("lang", "ar");
                    //   box.write("key", "AR");
                    Get.updateLocale(const Locale("ar", null));
                  },
                  child: const Text("Arabic")),
            ],
          )
        ],
      ),
    );
  }
}
