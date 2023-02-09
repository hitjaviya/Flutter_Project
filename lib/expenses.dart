import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class expenses extends StatelessWidget {
  const expenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text("Expenses",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                      ),
                      const Text(
                        "March,2021",
                        style: TextStyle(color: Colors.black45, fontSize: 15),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    CupertinoIcons.chart_pie,
                    size: 25,
                    color: Colors.deepPurple,
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0, bottom: 30),
                child: CircularPercentIndicator(
                  radius: 130,
                  percent: 0.6,
                  backgroundColor: Colors.blue.shade50,
                  lineWidth: 30,
                  circularStrokeCap: CircularStrokeCap.round,
                  linearGradient: const LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurple,
                      Colors.pink,
                    ],
                  ),
                  center: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Center(
                      child: Column(children: const [
                        Text(
                          "💰",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "\$2,345",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "",
                              fontSize: 40,
                              color: Colors.deepPurple),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: const EdgeInsets.only(top: 2),
                shape: const OutlineInputBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    borderSide: BorderSide.none),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Center(
                        child: Icon(Icons.horizontal_rule_outlined),
                      ),
                      transactions(
                        iconText: "💸",
                        mainText: "Received cashback",
                        text2: "Transferred money",
                        amount: "+ \$20.00",
                        date: "12 March 2021",
                        color: Colors.deepPurple,
                      ),
                      transactions(
                        iconText: "🚕",
                        mainText: "Uber",
                        text2: "Taxi service",
                        amount: "- \$7.50",
                        date: "06 March 2021",
                        color: Colors.red,
                      ),
                      transactions(
                        iconText: "🌭",
                        mainText: "Morimoto",
                        text2: "Food & Drink",
                        amount: "- \$54.00",
                        date: "1 March 2021",
                        color: Colors.red,
                      ),
                      transactions(
                        iconText: "🏻",
                        mainText: "Received money",
                        text2: "From Robert Fox",
                        amount: "+ \$100.00",
                        date: "06 March 2021",
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget transactions({iconText, mainText, text2, date, amount, color}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Row(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(iconText, style: const TextStyle(fontSize: 20)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(mainText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black87.withOpacity(0.7))),
                  Text(text2, style: const TextStyle(color: Colors.black45))
                ],
              ),
            ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(amount,
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 19)),
              ),
              Text(
                date,
                style: const TextStyle(color: Colors.black45, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
