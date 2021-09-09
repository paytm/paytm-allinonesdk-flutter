import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  final String text, value;
  final Function? onChange;
  EditText(this.text, this.value, {this.onChange});
  @override
  State<StatefulWidget> createState() {
    return _EditTextState();
  }
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 18),
          ),
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.fromLTRB(12, 8, 0, 0),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: TextField(
            controller: TextEditingController(text: widget.value),
            onChanged: widget.onChange as void Function(String)?,
            decoration: InputDecoration(
              hintText: 'Enter ${widget.text}',
              fillColor: Colors.white,
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
