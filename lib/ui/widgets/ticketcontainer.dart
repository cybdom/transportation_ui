import 'package:flutter/material.dart';
import 'package:transportation_app/global.dart';

class TicketContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Departure In:"),
                    SizedBox(
                      height: 5.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "05",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          TextSpan(
                              text: "min",
                              style: Theme.of(context).textTheme.titleSmall),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Travel Time: ",
                              style: TextStyle(color: Colors.black87)),
                          TextSpan(
                              text: "15 min",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
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
                                    borderRadius: BorderRadius.circular(9.0),
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
                                    borderRadius: BorderRadius.circular(9.0),
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
              Text(
                "19:57",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.apply(color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.withOpacity(.3),
                          border: Border.all(color: Colors.blue, width: 3.0),
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Text("Boghni",
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(.3),
                          border: Border.all(color: Colors.orange, width: 3.0),
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Text("Tizi Ouzou",
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ],
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightGreen,
                ),
                icon: Icon(Icons.confirmation_number, color: Colors.white),
                onPressed: () => Navigator.of(context).pushNamed('details'),
                label: Text(
                  "Ticket: 70 DA",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.apply(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
