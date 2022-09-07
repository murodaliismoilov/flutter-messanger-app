import 'package:flutter/material.dart';

import '../../model/model.dart';

class ListForMessages extends StatelessWidget {
  ListForMessages({super.key, required this.listMessage});

  MessageListTile listMessage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(listMessage.image),
      ),
      title: Text(
        listMessage.title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        listMessage.subtitle,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              listMessage.trailing,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
