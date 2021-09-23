import 'package:chatui/customcolor.dart';
import 'package:chatui/resuseable/activity_widget.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.white24,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => showModalBottomSheet(
                backgroundColor: Colors.white.withOpacity(0),
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor: 0.3,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            kfirstcolor,
                            ksecondcolor,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Stack(
                        fit: StackFit.loose,
                        children: [
                          ActivityWidget(
                            assetImage: 'assets/images/camera.png',
                            descText: "Camera",
                            left: MediaQuery.of(context).size.width * .1,
                            top: 20,
                          ),
                          ActivityWidget(
                            assetImage: 'assets/images/money-transfer blue.png',
                            descText: "Send Money",
                            left: MediaQuery.of(context).size.width * .3,
                            top: 20,
                            imageHeight: 35,
                          ),
                          ActivityWidget(
                            assetImage: 'assets/images/paperclip.png',
                            descText: "Attachment",
                            left: MediaQuery.of(context).size.width * .55,
                            top: 25,
                          ),
                          ActivityWidget(
                            assetImage: 'assets/images/game-controller.png',
                            descText: "Games",
                            left: MediaQuery.of(context).size.width * .8,
                            top: 25,
                            imageHeight: 30,
                          ),
                          ActivityWidget(
                            assetImage: 'assets/images/location.png',
                            descText: "Location",
                            left: MediaQuery.of(context).size.width * .1,
                            top: 100,
                          ),
                          ActivityWidget(
                            assetImage: 'assets/images/event.png',
                            descText: "Schedule a call",
                            left: MediaQuery.of(context).size.width * .3,
                            top: 100,
                          ),
                          ActivityWidget(
                            assetImage: 'assets/images/music-note.png',
                            descText: "Schedule a call",
                            left: MediaQuery.of(context).size.width * .55,
                            top: 100,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/plus.png',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kownChatColor,
            ),
            child: IconButton(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .60,
                    height: MediaQuery.of(context).size.height * .3,
                    child: const TextField(
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  const Icon(Icons.emoji_emotions_outlined)
                ],
              ),
              onPressed: () {},
              color: Colors.blue[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: Image.asset('assets/images/paper-plane.png'),
          ),
        ],
      ),
    );
  }
}
