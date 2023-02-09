import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Stack(
            clipBehavior: Clip.antiAlias,
            fit: StackFit.loose,
            children: [
              customContainer(emoji: "😊", height: 150.0),
              customblock(title: 'hello  ')
            ],
          )
        ]),
      ),
    );
  }

  Widget customblock({required String title}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(bottom: 25),
        margin: const EdgeInsets.only(top: 100),
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget customContainer({required String emoji, double? width, height}) {
    return Expanded(
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.only(top: 30),
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        child: Text(
          emoji,
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
