import 'package:flutter/material.dart';

class MessageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MessageWidgetState();
  }
}

class MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: null,
              )),
              SizedBox(
                width: 50.0,
                child: IconButton(
                  icon: Icon(Icons.send),
                  tooltip: 'Send message.',
                  onPressed: () {
                  },
                ),
              )
            ],
          ),
        ));
  }
}
