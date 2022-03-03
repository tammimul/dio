import 'package:api/Constants/http_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import '../model/single_user.dart';


class homePage extends StatefulWidget {
  const homePage({Key key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

@override
void initState() {
  super.initState();
  http = HttpService();
  getUser();


}
  HttpService http;
  SingleUSerresponse singleUSerresponse;
  User user;
  bool isLoading = false;
  Future getUser()async{
    Response res;


  try {
     isLoading = true;
     res = await http.getRequest("/api/users/2");
     isLoading = false;
     if(res.statusCode == 200){
       setState(() {
         singleUSerresponse = SingleUSerresponse.fromJson(res.data);
         user = singleUSerresponse.user;
       });
     }else{
       print("some problem has occured");
     }
  } on Exception catch (e) {
    isLoading = false;
    print(e);
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading ? Center(
        child: CircularProgressIndicator(),
      ) : user!= null ? Column(
        children: [
          Image.network(user.avatar),
          Text(user.first_name),
          Text(user.last_name),
        ],
      ) : Center(child: Text('no user'),),
    );
  }
}
