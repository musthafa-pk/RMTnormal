import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/productdetails.dart';

class FinishedAds extends StatefulWidget {
  const FinishedAds({super.key});

  @override
  State<FinishedAds> createState() => _FinishedAdsState();
}

class _FinishedAdsState extends State<FinishedAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
         child: ListView.builder(
          itemCount: 3,
           itemBuilder: (context,index) {
             return Padding(
               padding: const EdgeInsets.all(2.5),
               child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                        },
                        child: Container(
                            // height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(19),
                                border: Border.all(
                                    width: 0.5,
                                    color: Color.fromRGBO(167, 167, 167, 0.51))),
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: Column(
                              children: [
                                Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/van.jpg'),
                                          fit: BoxFit.cover)),
                                ),),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 3,300',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: color1,
                                                borderRadius: BorderRadius.circular(18)),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9, top: 2, bottom: 2, right: 9),
                                              child: Text(
                                                'Daily',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        Color.fromRGBO(255, 255, 255, 0.66),
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.pink,
                                          )
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.all(4),
                                      child: Text('Van for rent 2018 Model',style: TextStyle(fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.66)),),),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            color: Colors.blue,
                                            size: 16,
                                          ),
                                          SizedBox(width: 10,),
                                          Text('Kozhikode, West hill',style: TextStyle(fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 0, 0, 0.66)),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                          height: 105,
                          width: MediaQuery.of(context).size.width,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      'Honda Amaze',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 80,
                                        child: Flexible(
                                          child: Text('10 Month Agreement',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.red),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 80,
                                        child: Flexible(
                                            child: Text(
                                          '4 Month & 2 Days Left',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.0, bottom: 10.0),
                                    child: LinearProgressIndicator(
                                      value: 1,
                                      backgroundColor:
                                          Color.fromRGBO(217, 217, 217, 1),
                                      color: Color.fromRGBO(25, 178, 0, 1),
                                      minHeight: 8.0,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                            
                              ],
                            )),
                      ),
             );
           }
         ),
       )
    );
  }
}