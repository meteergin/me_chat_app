import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageListWidget extends StatefulWidget {
  String _messageText;

  MessageListWidget(this._messageText);

  @override
  State<StatefulWidget> createState() {
    return MessageListWidgetState(_messageText);
  }
}

class MessageListWidgetState extends State<MessageListWidget> {
  String _messageText;

  MessageListWidgetState(this._messageText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text('ME'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      _messageText,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          DateTime.now().toString(),
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
