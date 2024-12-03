import 'package:dio/dio.dart';
import 'package:getx_blockchain_practice_project_1/consts.dart';

//masih u recommit

class HttpService {
  final Dio _dio = Dio();

  HttpService() {
    _configureDio();
  }

  void _configureDio() {
    _dio.options = BaseOptions(
      baseUrl: "https://api.cryptorank.io/v1/",
      queryParameters: {
        "api_key": CRYPTO_RANK_API_KEY,
      },
    );
  }
}
