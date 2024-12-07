import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAssetsDialogController extends GetxController {
  RxBool loading = true.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Durations.extralong4).then((value) {
      loading.value = false;
    });
  }
}

class AddAssetsDialog extends StatelessWidget {
  final controller = Get.put(
    AddAssetsDialogController(),
  );

  AddAssetsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Material(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.40,
            width: MediaQuery.sizeOf(context).width * 0.80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: Colors.white,
            ),
            child: _buildUI(),
          ),
        ),
      ),
    );
  }

  Widget _buildUI() {
    if (controller.loading.isTrue) {
      return const Center(
        child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Column(
        children: [],
      );
    }
  }
}
