import 'package:flutter/material.dart';
import 'package:transportation_app/global.dart';
import 'package:transportation_app/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 11.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(9.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 3.0,
                          offset: Offset(0, 3)),
                    ],
                  ),
                  child: Icon(Icons.map, color: Colors.white),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(9.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          blurRadius: 3.0,
                          offset: Offset(0, 3)),
                    ],
                  ),
                  child: Icon(Icons.star, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(9.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orange,
                          blurRadius: 3.0,
                          offset: Offset(0, 3)),
                    ],
                  ),
                  child: Text(
                    "Show Ticket",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .apply(color: Colors.white),
                        textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey[400]),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 9),
                    color: lightGreen.withOpacity(.75),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Image.asset('assets/invoice.png'),
                  ),
                  SizedBox(width: 15.0),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Buying tickets is now much more comfortable.",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Buy a ticket now and get 50% discount.",
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: darkGreen,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            MyMap(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      LocationRow(
                        color: Colors.blue,
                        icon: Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white,
                          size: 25,
                        ),
                        location: "Tizi Ouzou",
                        time: "Oct 27, 14:39",
                      ),
                      LocationRow(
                        color: Colors.white,
                        location: "Maatkas",
                        time: "Oct 27, 15:23",
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      LocationRow(
                        color: Colors.orange,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 25,
                        ),
                        location: "Boghni",
                        time: "Oct 27, 16:15",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      color: Color(0xfffcfcfd),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Colors.grey[200],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "05",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 41),
                        ),
                        Text(
                          "minute",
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 25),
                        ),
                        SizedBox(
                          height: 9.0,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: "Travel Time: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "15 min",
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .apply(
                                          color: darkBlue, fontWeightDelta: 2)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 9.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "07:05",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.directions_bus,
                                      color: Colors.black54,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0, horizontal: 9.0),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(9.0),
                                      ),
                                      child: Text(
                                        "20",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 9),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "07:23",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.directions_bus,
                                      color: Colors.black54,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0, horizontal: 9.0),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(9.0),
                                      ),
                                      child: Text(
                                        "20",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
