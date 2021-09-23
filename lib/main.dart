import 'package:chatui/customcolor.dart';
import 'package:chatui/data/chatdata.dart';
import 'package:chatui/resuseable/chat_bubble.dart';
import 'package:emoji_picker/emoji_picker.dart';

import 'package:flutter/material.dart';

import 'resuseable/activity_widget.dart';
import 'screens/chatbox.dart';
import 'screens/customappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat UX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomAppBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .73,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: chatDta.length,
                itemBuilder: (context, i) {
                  return ChatBubble(
                    align: chatDta[i].align,
                    message: chatDta[i].message,
                    time: chatDta[i].time,
                  );
                },
              ),
            ),
            const ChatBox(),
          ],
        ),
      ),
    );
  }
}
