import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 10, top: 40),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "\tsummary",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          " march , 2021",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 30.0,
                        right: 20,
                      ),
                      child: Icon(Icons.abc, size: 50),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 240, 50, 120),
                      Colors.blue,
                    ],
                  ),
                  color: Color.fromARGB(255, 0, 140, 205),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                margin: const EdgeInsets.all(20),
                // color: Colors.black,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 11.0),
                        child: Text(
                          "top catagory",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            customcard(
                                context: context,
                                marginleft: 20.0,
                                margintop: 20.0,
                                marginbottom: 5.0,
                                marginright: 10.0,
                                emoji: "🍑",
                                titletext: "Food",
                                emojiheight: 100.0),
                            customcard(
                                context: context,
                                marginleft: 10.0,
                                margintop: 20.0,
                                marginbottom: 5.0,
                                marginright: 20.0,
                                emoji: "🏡",
                                titletext: "House Rent",
                                emojiheight: 100.0),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            customcard(
                                context: context,
                                marginleft: 20.0,
                                marginbottom: 20.0,
                                marginright: 10.0,
                                emoji: "😎",
                                titletext: "Fule",
                                emojiheight: 100.0),
                            customcard(
                                context: context,
                                marginleft: 10.0,
                                marginbottom: 20.0,
                                marginright: 20.0,
                                emoji: "😚",
                                titletext: "kiss",
                                emojiheight: 100.0),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customblock({required String title}) {
    return Container(
      padding: const EdgeInsets.only(bottom: 25),
      margin: const EdgeInsets.only(top: 100),
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget customContainer({required String emoji, double? width, height}) {
    return Expanded(
      child: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          color: Colors.amber,
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

  Widget customcard(
      {context,
      marginleft,
      marginright,
      margintop,
      marginbottom,
      emoji,
      titletext,
      emojiheight}) {
    return Container(
      width: (MediaQuery.of(context).size.width) / 2 - 30,
      height: 150,
      margin: EdgeInsets.only(
        left: marginleft ?? 0,
        bottom: marginbottom ?? 0,
        right: marginright ?? 0,
        top: margintop ?? 0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.antiAlias,
            fit: StackFit.loose,
            children: [
              customContainer(emoji: emoji, height: emojiheight ?? 100.0),
              customblock(title: titletext)
            ],
          ),
        ],
      ),
    );
  }
}
