import 'package:flutter/material.dart';
import 'package:flutter_messanger_app/widgets/home_page/chat_rooms.dart';
import 'package:flutter_messanger_app/widgets/home_page/search_and_add_button.dart';
import '../../model/model.dart';
import 'list_for_messages.dart';

class HomeBodyWidget extends StatelessWidget {
  HomeBodyWidget({super.key});
  final _serchTextController = TextEditingController();
  List<MessageListTile> listTileMessages = [
    MessageListTile(
      'images/shaxzod-maxmudov.jpg',
      'Saxzod Maxmudov',
      'Eng zo\'ri,Samarqand shaxridan...',
      'Mon',
    ),
    MessageListTile(
      'images/bekzod.jpg',
      'Bekzod Maxmudov',
      'Upload file',
      'Tue',
    ),
    MessageListTile(
      'images/userImage.jpg',
      'Bozenk Malina',
      'bozenkmalina@gmail.com',
      '12 Aug',
    ),
    MessageListTile(
      'images/maestro.jpg',
      'Maestro Kabayeva',
      'Will do,super thank you :)',
      'Mon',
    ),
    MessageListTile(
      'images/martinawolna.jpg',
      'Sasha Sergeyevna',
      'bozenkmalina@gmail.com',
      'Tue',
    ),
    MessageListTile(
      'images/mickel-jordan.jpg',
      'Michel Jordan',
      'Here is another tutorial,if you...',
      'Wed',
    ),
    MessageListTile(
      'images/natasha.jpg',
      'Natasha Vladimirovna',
      'Goog morning!',
      'Sun',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        overscroll: false,
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 20, top: 20),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/martinawolna.jpg'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Martina Wolna',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SearchAndAddButton(
              serchTextController: _serchTextController,
            ),
          ),
          // SizedBox(
          //   height: 12,
          // ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Chatrooms',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 180,
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(
                overscroll: false,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ChatRooms(
                    chatRoowName: 'Borzenka',
                    chatRoowSurName: 'Malina',
                    colors: [
                      Color(0xffFFE81D),
                      Color(0xff00F0FF),
                    ],
                  ),
                  ChatRooms(
                    chatRoowName: 'Anastazja',
                    chatRoowSurName: 'Ziemkowska',
                    colors: [
                      Color(0xff03A9F1),
                      Color(0xffA0025A),
                    ],
                  ),
                  ChatRooms(
                    chatRoowName: 'Magdalena',
                    chatRoowSurName: 'Pomorska',
                    colors: [
                      Color(0xffB347EA),
                      Color(0xff09F9BF),
                    ],
                  ),
                  ChatRooms(
                    chatRoowName: 'Murodali',
                    chatRoowSurName: 'Ismailov',
                    colors: [
                      Color(0xff00FFCD),
                      Color(0xffDCD4FF),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListForMessages(
            listMessage: listTileMessages[0],
          ),
          ListForMessages(
            listMessage: listTileMessages[1],
          ),
          ListForMessages(
            listMessage: listTileMessages[2],
          ),
          ListForMessages(
            listMessage: listTileMessages[3],
          ),
          ListForMessages(
            listMessage: listTileMessages[4],
          ),
          ListForMessages(
            listMessage: listTileMessages[5],
          ),
          ListForMessages(
            listMessage: listTileMessages[6],
          ),
        ],
      ),
    );
  }
}
