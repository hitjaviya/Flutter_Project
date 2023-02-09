import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstpage.dart';

class Homepage_ extends StatefulWidget {
  const Homepage_({super.key});

  @override
  State<Homepage_> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage_> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade700,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(50))),
            height: 320,
            child: SafeArea(
              child: Center(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        "💸",
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                    Text(
                      "\$4,500",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "budget limit for April,2021",
                        style: TextStyle(fontSize: 15, color: Colors.white54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  expenseCard(
                      iconText: "🍔",
                      context: context,
                      expenseText: "Food & Drink",
                      amountTotal: "\$1500/month",
                      amount: "\$750",
                      spendMessage: "Spend \$750 from \$1500",
                      message: "Good job! Your spending is on track",
                      color: Colors.deepPurple),
                  expenseCard(
                      iconText: "🍔",
                      context: context,
                      expenseText: "Food & Drink",
                      amountTotal: "\$1500/month",
                      amount: "\$750",
                      spendMessage: "Spend \$750 from \$1500",
                      message: "Good job! Your spending is on track",
                      color: Colors.deepPurple),
                  expenseCard(
                      iconText: "🍔",
                      context: context,
                      expenseText: "Food & Drink",
                      amountTotal: "\$1500/month",
                      amount: "\$750",
                      spendMessage: "Spend \$750 from \$1500",
                      message: "Good job! Your spending is on track",
                      color: Colors.deepPurple),
                  expenseCard(
                      iconText: "🚗",
                      context: context,
                      expenseText: "Car fuel",
                      amountTotal: "\$300/month",
                      amount: "\$450",
                      spendMessage: "Overspending \$450 from \$300",
                      message: "Oops! You are over budget",
                      color: Colors.red)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget expenseCard(
      {iconText,
      context,
      expenseText,
      color,
      amountTotal,
      amount,
      spendMessage,
      message}) {
    return Center(
      child: SizedBox(
        height: 270,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            elevation: 2,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20),
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(iconText,
                              style: const TextStyle(fontSize: 20))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(expenseText,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                          ),
                          Text(amountTotal,
                              style: const TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 5),
                  child: Container(
                    decoration: const ShapeDecoration(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide.none),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue, Colors.pink],
                      ),
                    ),
                    child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: Text(
                          amount,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Firstpage()));
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 3),
                  child: Text(spendMessage,
                      style: const TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Divider(
                    color: Colors.black,
                    thickness: 0.1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(message,
                            style: TextStyle(
                                color: color, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: color[50],
                              borderRadius: BorderRadius.circular(
                                100,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              CupertinoIcons.right_chevron,
                              color: color,
                              size: 18,
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
