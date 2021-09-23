import 'package:flutter/material.dart';

import '../customcolor.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      width: double.infinity,
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
            bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        gradient: const LinearGradient(
          colors: [
            kfirstcolor,
            ksecondcolor,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                const Positioned(
                  top: 20,
                  left: 0,
                  child: Icon(
                    Icons.chevron_left,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                    top: 25,
                    left: 50,
                    child: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.white,
                      size: 35,
                    )),
                const Positioned(
                  top: 25,
                  left: 85,
                  child: Text(
                    "Julian Dasilva",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  top: 45,
                  left: 85,
                  child: Text(
                    'Online',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  top: 35,
                  right: 70,
                  child: Image.asset('assets/call.png'),
                ),
                Positioned(
                  top: 17,
                  right: 0,
                  child: Image.asset('assets/videocall.png'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
