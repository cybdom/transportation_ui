import 'package:flutter/material.dart';
class DepartureSelector extends StatefulWidget {
  const DepartureSelector({
    Key key,
  }) : super(key: key);

  @override
  _DepartureSelectorState createState() => _DepartureSelectorState();
}

class _DepartureSelectorState extends State<DepartureSelector> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      style: Theme.of(context).textTheme.button.apply(color: Colors.white),
      iconEnabledColor: Colors.white,
      underline: Container(),
      value: _selected,
      onChanged: (i) {
        _selected = i;
      },
      items: [
        DropdownMenuItem(
          child: Text("Now"),
          value: 0,
        )
      ],
    );
  }
}
