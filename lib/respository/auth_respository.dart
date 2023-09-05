
import 'package:makhoya_moolah/data/network/base_api_services.dart';
import 'package:makhoya_moolah/data/network/network_api_services.dart';
import 'package:makhoya_moolah/res/components/app_url.dart';

class AuthRespository{
  BaseApiServices _apiServices  = NetworkApiServices();

  Future<dynamic> checkCodeApi(dynamic data) async{

    try
      {
        dynamic response  = await _apiServices.getPostApiResponse(AppUrl.checkCode, data);
        return response;
      }

      catch(e){
      throw e;
      }
  }

  Future<dynamic> priceOpenApi(dynamic data) async{

    try
    {
      dynamic response  = await _apiServices.getPostApiResponse(AppUrl.priceOpen, data);
      return response;
    }

    catch(e){
      throw e;
    }
  }

  Future<dynamic> userData(dynamic data) async{

    try
    {
      dynamic response  = await _apiServices.getPostApiResponse(AppUrl.userdata, data);
      return response;
    }

    catch(e){
      throw e;
    }
  }
}