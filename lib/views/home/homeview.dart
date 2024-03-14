import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/home/rentout1.dart';
import 'package:rentmything/views/productdetails.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<String> images = [
    'assets/images/50offimage.jpg',
    'assets/images/lmtoff.jpg',
    // 'assets/images/van.jpg',
    'assets/images/25off.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RentOut1(),
              ));
        },
        child: Container(
          width: 120,
          decoration: BoxDecoration(
              color: color1, borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rent Out',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.add,
                      color: color1,
                    )),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: color1,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rent My Thing',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          SizedBox(child: Image(image: AssetImage('icons/notification.png'),height: 24,width: 24,),)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: color2, borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 2.9,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Location',
                                        contentPadding: EdgeInsets.all(10),
                                        suffixIcon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                        ),
                                        hintStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400)),
                                  )),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Expanded(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'Search Now',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.66)),
                                    suffixIcon: Icon(
                                      Icons.search_sharp,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Image(image: AssetImage('icons/car.png'),height: 24,width: 24,),
                                  Text(
                                    'Vehicles',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Image(image: AssetImage('icons/electronics.png'),height: 24,width: 24,),
                                  Text(
                                    'Electronics',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Image(image: AssetImage('icons/machinary.png'),height: 24,width: 24,),
                                  Text(
                                    'Machineries',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Image(image: AssetImage('icons/tools.png'),height:24,width: 24,),
                                  Text(
                                    'Tools',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.chair,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Furnitures',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment:MainAxisAlignment.spaceAround,
            //     children: [
            //       Container(
            //         height: 100,
            //         width: MediaQuery.of(context).size.width/1.1,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15),
            //           color: Colors.grey,
            //           image: DecorationImage(
            //             image: AssetImage('assets/images/van.jpg'),
            //             fit: BoxFit.cover
            //           )
            //         ),
            //         child: Center(child: Text('Main Ads',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                  items: images.map((imagePath) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(imagePath),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        // Center(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: images.map((image){
                        //       int index = images.indexOf(image);
                        //       return Container(
                        //         width: 8.0,
                        //         height: 8.0,
                        //         margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 2),
                        //         decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           color: _currentIndex == index ? Colors.blueAccent : Colors.grey
                        //         ),
                        //       );
                        //     }).toList(),
                        //   ),
                        // )
                      ],
                    );
                  }).toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      // enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, _) {
                        setState(() {
                          _currentIndex = index;
                        });
                      })),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'My Rentals',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
        
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    // shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                        child: Container(
                          height: 105,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5,
                                  color:const Color.fromRGBO(167, 167, 167, 0.51)),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                  color:  Color.fromRGBO(0, 106, 152, 0.25),
                                )
                              ]),
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
                                      value: 0.5,
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
                      );
                    }),
              ),
            ),
        
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Popular',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            // Expanded(
            //   child:
            //       SingleChildScrollView(
            //         child: ListView.builder(
            //           itemCount: 5,
            //           shrinkWrap: true,
            //           itemBuilder: (context,index) {
            //             return Padding(
            //               padding: const EdgeInsets.only(left:25.0,right: 25,top: 8,bottom: 8),
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   borderRadius: BorderRadius.circular(15),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       blurRadius: 2,
            //                       offset: Offset(2,2),
            //                       color: Colors.blue.shade100
            //                     )
            //                   ]
            //                 ),
            //                 child: Padding(
            //                   padding: const EdgeInsets.all(2.0),
            //                   child: ListTile(
            //                     leading: Container(
            //                       height: 200,
            //                       width: 70,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(10),
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                     title: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Row(
            //                           children: [
            //                             Text('₹ 3,300',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),
            //                             SizedBox(width: 20,),
            //                             Container(
            //                               decoration: BoxDecoration(
            //                                 color: color3,
            //                                 borderRadius: BorderRadius.circular(15),
            //                               ),
            //                               child: Padding(
            //                                 padding: const EdgeInsets.only(left:10.0,right: 10.0),
            //                                 child: Text('Daily',style: TextStyle(fontSize: 10,fontWeight:FontWeight.w700, color:Colors.grey),),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                         Icon(Icons.favorite,color: Colors.pink,)
            //                       ],
            //                     ),
            //                     subtitle: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                       Text('Van for rent 2018 model'),
            //                       Row(children: [
            //                         Icon(Icons.location_on,color: color1,),
            //                         Text('kozhikode, West hill')
            //                       ],)
            //                     ]),
            //                   ),
            //                 ),
            //               ),
            //             );
            //           }
            //         ),
            //       ),
            // )
        
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                },
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(
                            width: 0.5,
                            color: Color.fromRGBO(167, 167, 167, 0.51))),
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
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
                    )),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(
                          width: 0.5,
                          color: Color.fromRGBO(167, 167, 167, 0.51))),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('images/bluecar.jpg',),
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
                                  '₹ 10,300',
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
                                      color: Color.fromRGBO(192, 106, 71, 1),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 9, top: 2, bottom: 2, right: 9),
                                    child: Text(
                                      'Monthly',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0.66),
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.pink,
                                )
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(4),
                            child: Text('Car for rent 2018 Model',style: TextStyle(fontWeight: FontWeight.w400,
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
                                Text('Kozhikode, Nadakkavu',style: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.66)),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(
                          width: 0.5,
                          color: Color.fromRGBO(167, 167, 167, 0.51))),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('images/redcar.jpg'),
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
                                      color: Color.fromRGBO(91, 109,147, 1),
                                      borderRadius: BorderRadius.circular(18)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 9, top: 2, bottom: 2, right: 9),
                                    child: Text(
                                      'Hourly',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0.66),
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.pink,
                                )
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(4),
                            child: Text('Car for rent 2018 Model',style: TextStyle(fontWeight: FontWeight.w400,
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
                                Text('Kozhikode, Vadakara',style: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.66)),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
