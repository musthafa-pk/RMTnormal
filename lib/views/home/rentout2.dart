import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/home/rentoutVehicle.dart';

class RentOut2 extends StatefulWidget {
  String itemName;
  RentOut2({required this.itemName,super.key});

  @override
  State<RentOut2> createState() => _RentOut2State();
}

class _RentOut2State extends State<RentOut2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_circle_left,color: color1,)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('${widget.itemName}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16 ),),
              ),
            SizedBox(height: 20,),
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
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RentOutVehicle()));
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
                            Icon(Icons.drive_eta,color: color1,),
                            Text('Car',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: color1),)
                          ],
                        ),
                      ),
                    ),),
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