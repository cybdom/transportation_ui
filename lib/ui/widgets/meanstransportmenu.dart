import 'package:flutter/material.dart';

class MeansTransportMenu extends StatefulWidget {
  @override
  _MeansTransportMenuState createState() => _MeansTransportMenuState();
}

class _MeansTransportMenuState extends State<MeansTransportMenu> {
  final List<Map<String, dynamic>> menuItems = [
    {'time': '9 min', 'icon': Icons.directions_car},
    {'time': '15 min', 'icon': Icons.directions_bus},
    {'time': '31 min', 'icon': Icons.directions_walk},
    {'time': '21 min', 'icon': Icons.directions_bike},
  ];

  int _a = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(menuItems.length, (f) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _a = f;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 9.0),
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: _a == f ? Color(0xff02aefe) : Color(0xfffafbfc),
                border: _a == f ? Border() : Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(9.0),
                boxShadow: _a == f
                    ? [
                        BoxShadow(
                            blurRadius: 9.0,
                            color: Color(0xff02aefe),
                            offset: Offset(0, 3))
                      ]
                    : null,
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    menuItems[f]['icon'],
                    color: _a == f ? Colors.white : Color(0xffa7b7c5),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Flexible(
                      child: Text(
                    "${menuItems[f]['time']}",
                    style: TextStyle(
                      color: _a == f ? Colors.white : Color(0xffa7b7c5),
                    ),
                  ))
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
