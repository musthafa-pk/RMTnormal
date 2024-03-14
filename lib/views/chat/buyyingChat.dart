import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/chat/chatpage.dart';

class BuyyingChat extends StatefulWidget {
  const BuyyingChat({super.key});

  @override
  State<BuyyingChat> createState() => _BuyyingChatState();
}

class _BuyyingChatState extends State<BuyyingChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context,index) {
              return MessageContainer();
            }
          ),
        ],
      ),
    );
  }
}

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.5,bottom: 2.5),
      child: Stack(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.52),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage('images/van.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Van Fresh 2024',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('images/person1.jpg')),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gayathri',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  'Ok,share your number...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ),
          Positioned(
              right: 0,
              top: 10,
              child: Icon(
                Icons.more_vert_rounded,
                color: color1,
              )),
          Positioned(
              right: 10,
              bottom: 10,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: color1,
                child: Text(
                  '1',
                  style:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 0.7)),
                ),
              )),
        ],
      ),
    );
  }
}
