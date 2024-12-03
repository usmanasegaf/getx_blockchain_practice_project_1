import 'package:get/get.dart';
import 'package:getx_blockchain_practice_project_1/services/http_service.dart';

Future<void> registerServices() async {
  Get.put(
    HttpService(),
  );
}
