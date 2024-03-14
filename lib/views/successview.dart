import 'package:flutter/material.dart';
import 'package:rentmything/bottomNavigationPage.dart';
import 'package:rentmything/constants/constants.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Success...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28,color: color1),),
          Image.asset('images/success_image.jpg'),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0),
              child: Text('Step back and relax. Your ad is under verification.',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Column(
              children: [
                MyButton(clickme: () {
                  
                },title: 'Go to Ad Section',backgroundColor: Colors.white,textColor: color1,),
                SizedBox(height: 10.0,),
                MyButton(clickme: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationPage(),));
                },title: 'Back to Home',backgroundColor: color1,textColor: Colors.white, ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback clickme;
  MyButton({
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    required this.clickme,
    Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:clickme,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: color1),
          borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(child: Text(title,style: TextStyle(color: textColor,fontWeight: FontWeight.w500,fontSize: 16),)),
          ),
      ),
    );
  }
}