import 'dart:convert';

import 'package:http/http.dart';

class NetworkResponse {
  final bool isSuccess;
  final int statusCode;
  final Map<String, dynamic>? data;
  final String? errorMessage;

  NetworkResponse({
    required this.isSuccess,
    required this.statusCode,
    this.data,
    this.errorMessage = 'Something went wrong',
  });
}

class NetworkClient {
  
  static Future<NetworkResponse> getRequest({required String url}) async {
    Uri uri = Uri.parse(url);
  try{
    Response response = await get(uri);
    if (response.statusCode == 200) {
      final decodeJson = jsonDecode(response.body);
      return NetworkResponse(
          isSuccess: true, statusCode: response.statusCode, data: decodeJson);
    } else {
      return NetworkResponse(isSuccess: false, statusCode: response.statusCode);
    }
  }catch(e){
    return NetworkResponse(isSuccess: false, statusCode: -1,errorMessage: e.toString());
  }
  }
}
