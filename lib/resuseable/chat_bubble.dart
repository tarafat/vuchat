import 'package:chatui/customcolor.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool align;
  final String message;
  final String time;
  const ChatBubble({
    Key key,
    this.align,
    this.message,
    this.time,
  }) : super(key: key);

  get kownChatColor => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:
            align ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (align)
            const Flexible(
              // flex: 1,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Icon(
                  Icons.supervised_user_circle_outlined,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
            ),
          const SizedBox(
            height: 80,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment:
                  align ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: align
                        ? BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            color: kownChatColor,
                          )
                        : const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                kfirstcolor,
                                ksecondcolor,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        message,
                        overflow: TextOverflow.clip,
                        style: align
                            ? const TextStyle()
                            : const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment:
                      align ? Alignment.centerLeft : Alignment.centerRight,
                  child: Text(
                    time,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          if (!align)
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Icon(
                  Icons.supervised_user_circle_outlined,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
