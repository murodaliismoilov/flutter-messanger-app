import 'package:flutter/material.dart';

import 'heart_animation.dart';

class ChatRooms extends StatefulWidget {
  const ChatRooms({
    super.key,
    required this.colors,
    required this.chatRoowName,
    required this.chatRoowSurName,
  });
  final List<Color> colors;
  final String chatRoowName;
  final String chatRoowSurName;

  @override
  State<ChatRooms> createState() => _ChatRoomsState();
}

class _ChatRoomsState extends State<ChatRooms>
    with SingleTickerProviderStateMixin {
  bool isLiked = false;
  bool isHertAnimation = false;
  Widget like() {
    final icon = isLiked ? Icons.favorite : Icons.favorite_outline;
    final color = isLiked ? Colors.red : Colors.grey;
    return HeartAnimation(
      isAnimating: isLiked,
      child: InkWell(
        onTap: () => setState(() => isLiked = !isLiked),
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, bottom: 25),
      child: Container(
        width: 95,
        height: 140,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.45),
              blurRadius: 15,
              offset: Offset(20, 12),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: widget.colors,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            right: 5.0,
            left: 10,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.chatRoowName),
              Text(widget.chatRoowSurName),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 5, left: 5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: like(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
