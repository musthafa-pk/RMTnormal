import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rentmything/Utils/Utils.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/res/app_url.dart';
import 'package:rentmything/views/successview.dart';
import 'package:http/http.dart' as http;

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  dynamic userData = {};

  Future<void> userProfile() async {
    String url = AppUrl.userDetails;
    Map<String,dynamic> data ={
      "id":Utils.userId
    };
  try {
    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        // 'Authorization': 'Bearer $token', 
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      // setState(() {
        userData.clear();
        userData.addAll(responseData);
      //
      // Successful POST request
      print('POST request successful');
      print(response.body);
    } else {
      // Failed POST request
      print('Failed to make POST request');
      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
    }
  } catch (e) {
    // Exception occurred during the request
    print('Error occurred during POST request: $e');
  }
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: userProfile(),
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapshot.hasError){
            return Center(child: Text('Some Error Occured!'),);
          }
          else{
            return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('My Profile',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${userData['data']['name']}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                        Text('${userData['data']['phone_number']}',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),),
                        Text('${userData['data']['email']}',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10)),
                      ],
                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
              SizedBox(height: 40,),
              ProfileTabs(tabname:'Settings' ,tabicon:Icon(Icons.settings,color: Colors.white),tabcolor: color4 ,),
              SizedBox(height: 20,),
              ProfileTabs(tabname:'Help & Support' ,tabicon:Icon(Icons.support,color: Colors.white),tabcolor: color5 ,),
              SizedBox(height: 20,),
              ProfileTabs(tabname:'Logout' ,tabicon:Icon(Icons.logout_rounded,color: Colors.white,),tabcolor: color6 ,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessView(),));
              }, child: Text('Successpage')),
            ],
          );
          }
        }
      ),
    );
  }
}


//widgets
class ProfileTabs extends StatelessWidget {
  String tabname;
  Icon tabicon;
  Color tabcolor;
   ProfileTabs({required this.tabname,required this.tabicon,required this.tabcolor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 50,),
          CircleAvatar(
            radius: 30,
            backgroundColor: tabcolor,
            child: tabicon
          ),
          SizedBox(width: 30,),
          Text(tabname,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color.fromRGBO(0, 0, 0, 0.56)),)
        ],
      ),
    );
  }
}