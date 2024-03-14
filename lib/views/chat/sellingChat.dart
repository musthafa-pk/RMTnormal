import 'package:flutter/material.dart';
import 'package:rentmything/views/chat/buyyingChat.dart';

class SellingChat extends StatefulWidget {
  const SellingChat({super.key});

  @override
  State<SellingChat> createState() => _SellingChatState();
}

class _SellingChatState extends State<SellingChat> {
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