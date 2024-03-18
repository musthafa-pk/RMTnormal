import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/home/customDropDown.dart';
import 'package:rentmything/views/successview.dart';

class RentOutVehicle extends StatefulWidget {
  const RentOutVehicle({super.key});

  @override
  State<RentOutVehicle> createState() => _RentOutVehicleState();
}

class _RentOutVehicleState extends State<RentOutVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_circle_left_rounded,color: color1,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            SizedBox(height: 20,),
            Text('Details',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Add Photo',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(image: AssetImage('images/redcar.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(image: AssetImage('images/bluecar.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(image: AssetImage('images/redcar.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromRGBO(7,59, 76, 0.18)
                  ),
                  child: Center(child: Icon(Icons.add,color: Color.fromRGBO(88, 88, 88, 1),)),
                ),
              ],
            ),),
            Text('Brand',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 59,76,0.18),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          
            Text('Year',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 59,76,0.18),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          
            Text('Fuel'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 115,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 59, 76, 0.18),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('Petrol')),
                  ),
                  SizedBox(width: 10,),
          
                  Container(
                    width: 115,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 59, 76, 0.18),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('Diesel')),
                  ),
          
                  SizedBox(width: 10,),
          
                  Container(
                    width: 115,
                    height: 40,
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('Electric',style: TextStyle(color: Colors.white),)),
                  ),
          
                  SizedBox(width: 10,),
          
                  Container(
                    width: 115,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 59, 76, 0.18),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('CNG')),
                  ),
          
                  SizedBox(width: 10,),
          
                  Container(
                    width: 115,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 59, 76, 0.18),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('Water')),
                  ),
                ],
              ),
            ),
          
            Text('Km Driven',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 59,76,0.18),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          
            Text('Ad Title',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 59,76,0.18),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          
            Text('Description',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 59,76, 0.18),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextField(
                maxLength: 399,
                maxLines: 4,
                decoration    : InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),
          
            Text('Time Period & Price'),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(
                children: [
                  SizedBox(width: 125,
                  child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: CustomDropdown(options: ['Daily','Monthly','Hourly'],
                 onChanged: (value) {
                   
                 },)
              ),),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(7, 59, 76, 0.18)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
                ),
              )
                ],
              ),
            ),
          
            Text('Location',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(7, 59, 76, 0.18),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),

            SizedBox(height: 10,),
          
          SizedBox(
            width: MediaQuery.of(context).size.width/1.1,
            child: MyButton(title: 'Post Now', backgroundColor: color1, textColor: Colors.white, clickme: (){})),

            SizedBox(height: 10.0,),
            
          
          ]),
        ),
      ),
    );
  }
}