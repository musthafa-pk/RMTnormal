import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/person1.jpg'),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Gayathri',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              Text('Online',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(5,171,207,1)),)
            ],)
          ],
        ),
        actions: [
          Icon(Icons.more_vert_outlined,color: color1,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color1
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage('images/van.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Van Fresh 2024',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Posted On : 1-3-2024',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              buildMessage(isSentByMe: true, message: 'Hey'),
              buildMessage(isSentByMe: false, message: 'Hellooooooooooo'),
              buildMessage(isSentByMe: true, message: 'hey, is it available?'),
              buildMessage(isSentByMe: false, message: 'Yes, its available'),
            ],),
          )
        ],
      ),
    );
  }

  Widget buildMessage({required bool isSentByMe, required String message}) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: isSentByMe ? color1 : Colors.grey[300],
          borderRadius:isSentByMe ? BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
            bottomLeft: Radius.circular(22)
          ):BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
            bottomRight: Radius.circular(22)
          ),
        ),
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(12),
        child: Text(
          message,
          style: TextStyle(
            color: isSentByMe ? Colors.white : color1,
          ),
        ),
      ),
    );
  }
}
