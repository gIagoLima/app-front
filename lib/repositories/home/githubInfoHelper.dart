import 'package:dio/dio.dart';

import '../../utils/endpoints/endPoints.dart';

class GithubInfoHelper {
    Dio dio = Dio();
  Future<List> getInfo () async {
     var response = await dio.get(
        Endpoints.githubData,
        //queryParameters: infoGet,
        options: Options(
            sendTimeout: 500000000000000,
            receiveTimeout: 5000000000000000,
            receiveDataWhenStatusError: true,
            maxRedirects: 10,
            method: "GET",
            contentType: "application/json",
          ));
      List dataToReturn = [];
      if(response.data != null){
          try {
            dataToReturn = response.data;
          } catch (e) {
          }
      }
      return dataToReturn;
  }
}