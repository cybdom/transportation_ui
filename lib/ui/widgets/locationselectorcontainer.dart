import 'package:flutter/material.dart';


class LocationSelectorContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
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
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "From",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle
                              .apply(color: Colors.black38),
                        ),
                        GestureDetector(
                            child: Text(
                              "Your Location",
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .apply(color: Colors.black87),
                            ),
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 25,
                  color: Colors.black,
                  thickness: .7,
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
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "To",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle
                              .apply(color: Colors.black38),
                        ),
                        GestureDetector(
                            child: Text(
                              "Choose A Destination",
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .apply(color: Colors.black87),
                            ),
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff0f3f7),
                borderRadius: BorderRadius.circular(5.0)),
            child: IconButton(
              icon: Icon(
                Icons.import_export,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
