import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/successview.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    Text('Mohamed Mushtafa ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                    Text('9544688490',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),),
                    Text('mmusthafa270@gmail.com',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10)),
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