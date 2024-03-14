import 'package:flutter/material.dart';
import 'package:rentmything/bottomNavigationPage.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/chat/buyyingChat.dart';
import 'package:rentmything/views/chat/sellingChat.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

  final _kTabPages = <Widget>[
    BuyyingChat(),
    SellingChat()
  ];

  final _kTabs = <Tab>[
    const Tab(text: 'Buying',),
    const Tab(text:'Selling'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> BottomNavigationPage()));
          },
          child: Icon(Icons.arrow_circle_left,color: color1,)),
        title: Center(child: Text('Chat',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
        bottom: TabBar(tabs: _kTabs,
        labelColor: color1,
        indicatorColor: color1,
        )
      ),
      body: TabBarView(children: _kTabPages)
    ),
    );
  }
}