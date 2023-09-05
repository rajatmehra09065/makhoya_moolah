
import 'package:flutter/cupertino.dart';
import 'package:makhoya_moolah/respository/auth_respository.dart';

class AuthViewModel with ChangeNotifier{

  final _myRepo = AuthRespository();

  Future<void> checkCodeApi(dynamic data , BuildContext context) async{
    _myRepo.checkCodeApi(data).then((value) {
      print(value.toString());
      
    }).onError((error, stackTrace){
      print(error.toString());

    });

  }

}