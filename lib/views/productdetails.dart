import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_share/flutter_share.dart';  
import 'package:rentmything/constants/constants.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

   void _shareProductDetails() async {
    try {
      // Define the text content to share
      String productDetails = '''
      HYUNDAI NEW I20 2023
      Brand: Hyundai
      Price: ₹3400 per day
      Location: Kozhikode, Vadakara
      Musthafa
      Posted On: 1-3-2024
      Description:
      - Parking Sensors: Yes
      - Power Steering: Yes
      - Power Windows: Front & rear
      - AM/FM Radio: Yes
      - Rear parking Camera: Yes
      ''';

      // Share the product details
      await FlutterShare.share(
        title: 'Product Details',
        text: productDetails,
      );
    } catch (e) {
      print('Error sharing: $e');
      // Handle errors here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
        
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             InkWell(
              onTap: (){},
               child: Container(
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(217,217,217,1), borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call,color: color1,),
                    ],
                  ),
                ),
                           ),
             ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: color1, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat,color: Colors.white,),
                    Text(
                      'Chat Now',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){
              _shareProductDetails();
            },
            child: Icon(
              Icons.share,
            ),
          ),
          Icon(Icons.favorite)
        ],
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_circle_left)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'HYUNDAI NEW I20 2023',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: color1, borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 4, left: 16, right: 16.0),
                  child: Text(
                    'Hyundai',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/redcar.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/redcar.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/bluecar.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 3400',
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 24, 93, 1),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 2, bottom: 2),
                            child: Text(
                              'Daily',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                      Text(
                        'Kozhikode , Vadakara',
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 106, 152, 0.25),
                                    offset: Offset(2, 2),
                                    spreadRadius: -2,
                                    blurRadius: 19)
                              ],
                              border: Border.all(
                                width: 0.5,
                                color: Color.fromRGBO(167, 167, 167, 0.51),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(
                                Icons.speed,
                                size: 13,
                                color: color1,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '23000 KM',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: color1),
                              )
                            ]),
                          ),
                        ),
                        Container(
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 106, 152, 0.25),
                                    offset: Offset(2, 2),
                                    spreadRadius: -2,
                                    blurRadius: 19)
                              ],
                              border: Border.all(
                                width: 0.5,
                                color: Color.fromRGBO(167, 167, 167, 0.51),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(
                                Icons.water_drop,
                                size: 12,
                                color: color1,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Petrol',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: color1),
                              )
                            ]),
                          ),
                        ),
                        Container(
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 106, 152, 0.25),
                                    offset: Offset(2, 2),
                                    spreadRadius: -2,
                                    blurRadius: 19)
                              ],
                              border: Border.all(
                                width: 0.5,
                                color: Color.fromRGBO(167, 167, 167, 0.51),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(
                                Icons.calendar_month,
                                size: 12,
                                color: color1,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '2023',
                                style: TextStyle(
                                  color: color1,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(210, 220, 223, 0.62),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.blue,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Musthafa',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Posted On : 1-3-2024',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.66),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Discription',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              letterSpacing: 0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Parking Sensors : Yes',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Power Steering : Yes',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Power Windows : Front & rear',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'AM / FM Radio: Yes',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Rear parking Camera : Yes',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
