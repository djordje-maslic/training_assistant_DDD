import 'package:flutter/material.dart';

class UserFormToggleButton extends StatelessWidget {
  final String title;
  final List<bool> isSelected;
  final void Function(int) onPressed;
  final List<Widget> children;

  const UserFormToggleButton({
    Key key,
    @required this.title,
    @required this.isSelected,
    @required this.onPressed,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.indigo[200]),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleButtons(
                disabledColor: Colors.grey,
                selectedColor: Colors.indigoAccent,
                selectedBorderColor: Colors.amber,
                fillColor: Colors.amber,
                isSelected: isSelected,
                onPressed: onPressed,
                children: children),
          ),
        ),
      ],
    );
  }
}
