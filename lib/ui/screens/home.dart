import 'package:flutter/material.dart';
import 'package:transportation_app/global.dart';
import 'package:transportation_app/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.map, color: Colors.grey),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.person_pin_circle, color: Colors.grey),
                  ),
                ),
              ),
              Flexible(
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
                      child: Icon(
                        Icons.confirmation_number,
                        color: Colors.white,
                      )),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.location_city, color: Colors.grey),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: lightGreen,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Depart at: ",
                        style: TextStyle(
                            color: Colors.white.withOpacity(.79),
                            fontSize: 15.0),
                      ),
                      DepartureSelector(),
                      Spacer(),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Filters",
                          style:
                              TextStyle(color: Colors.white.withOpacity(.85)),
                        ),
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white.withOpacity(.85),
                        ),
                      )
                    ],
                  ),
                  LocationSelectorContainer(),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, -5),
                    blurRadius: 9,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  MeansTransportMenu(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (ctx, i) {
                      return TicketContainer();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
