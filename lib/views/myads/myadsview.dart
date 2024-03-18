import 'package:flutter/material.dart';
import 'package:rentmything/bottomNavigationPage.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/myads/ongoingads.dart';
import 'package:rentmything/views/myads/renteditems.dart';

class MyAdsView extends StatefulWidget {
  const MyAdsView({super.key});

  @override
  State<MyAdsView> createState() => _MyAdsViewState();
}

class _MyAdsViewState extends State<MyAdsView> {

  final _adTabPages = <Widget>[
    OngoingAds(),
    RentedItems()
  ];

  final _addTabs = <Tab>[
    const Tab(text: 'On Going Ads',),
    const Tab(text:'Rented Items'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _addTabs.length,
       child: Scaffold(
       appBar: AppBar(
        title: Center(child: Text('My Ads')),
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>BottomNavigationPage()));
          },
          child: Icon(Icons.arrow_circle_left,color: color1,)),
        bottom: TabBar(tabs: _addTabs,
        labelColor: color1,
        indicatorColor: color1,),
       ),
       body: TabBarView(children: _adTabPages,)
    ));
  }
}