class Chat {
  bool align;
  String message;
  String time;

  Chat(this.align, this.message, this.time);
}

List<Chat> chatDta = [
  Chat(true, 'Hi Ankur! What\'s  up', ' Wednesday 14:26 p.m.'),
  Chat(
      false,
      'Oh , hello! All perfectly fine I\'m Just heading out for something',
      'Yesterday 14:38 PM'),
  Chat(true, 'Audio..', 'Yesterday 14:34 PM'),
  Chat(false, 'Yeah sure I\'ll be there this weekend with my brother',
      'Yesterday 14:50 PM'),
  Chat(true, 'Yes I Am So Happy :\) ', 'Yesterday 14:56 PM'),
  Chat(false, 'Okay, See you than. Have a good day brither. ',
      'Yesterday 14:56 PM'),
];
