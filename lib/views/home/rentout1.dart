import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/home/rentout2.dart';

class RentOut1 extends StatefulWidget {
  const RentOut1({super.key});

  @override
  State<RentOut1> createState() => _RentOut1State();
}

class _RentOut1State extends State<RentOut1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_circle_left_rounded,color: color1,)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Rent Your Product',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16 ),),
              ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Select Category',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
            ),
            SizedBox(height: 20.0,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount:(Orientation == Orientation.portrait) ? 2 : 3),
                  itemCount: 8,
                  itemBuilder: (BuildContext context,int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RentOut2(itemName: 'Vehicles')));
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(16),
                           border: Border.all(width: 0.5,color: Color.fromRGBO(167,167,167, 0.51)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2,2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 106, 152,0.25),
                            )
                          ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.car_crash,color: color1,),
                              Text('Vehicles',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: color1),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
            )
          ]),
        ),
      ),
    );
  }
}