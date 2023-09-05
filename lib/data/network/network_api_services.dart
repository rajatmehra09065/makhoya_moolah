import 'dart:convert';
import 'dart:io';


import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart';
import 'package:makhoya_moolah/data/app_exception.dart';
import 'package:makhoya_moolah/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices{
  //Get Api
  @override
  Future getGetApiResponse(String url) async {

    dynamic responseJson;

    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson  =returnResponse(response);

    } on SocketException{
      throw FetchDataException("No Internet Connection");
    }

    return responseJson;

  }
//Post APi
  @override
  Future getPostApiResponse(String url , dynamic data) async {
    dynamic responseJson;

    try{
      final response =
      await post(Uri.parse(url),
      body: data).timeout(Duration(seconds: 10));
      responseJson  =returnResponse(response);

    } on SocketException{
      throw FetchDataException("No Internet Connection");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;

      case 400:
        throw BadRequestException(response.body.toString());

      case 404:
        throw UnauthorisedException(response.body.toString());

        default:
          throw FetchDataException('Error occurred while communicating with server' + 'with status code'+ response.statusCode.toString());
    }
  }

}