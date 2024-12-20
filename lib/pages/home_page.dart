import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_blockchain_practice_project_1/widgets/add_assets_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Get.dialog(
                AddAssetsDialog(),
              );
            },
            icon: const Icon(
              Icons.add,
            ))
      ],
    );
  }
}
