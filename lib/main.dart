import 'package:flutter/material.dart';
import 'package:mechat/widgets/messageListWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = new TextEditingController();
  List<MessageListWidget> _messageListWidgetList = <MessageListWidget>[];

  void _sendMessage(String text) {
    _textEditingController.clear();
    MessageListWidget messageListWidget = new MessageListWidget(text);
    setState(() {
      _messageListWidgetList.add(messageListWidget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemBuilder: (_, int index) => _messageListWidgetList[index],
              itemCount: _messageListWidgetList.length,
              reverse: false,
            ),
          ),
          SizedBox(
              height: 100.0,
              child: Padding(
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
                          decoration:
                              InputDecoration.collapsed(hintText: "Write something ..."),
                          controller: _textEditingController,
                          onSubmitted: _sendMessage,
                        )),
                        SizedBox(
                          width: 50.0,
                          child: IconButton(
                            icon: Icon(Icons.send),
                            tooltip: 'Send message.',
                            onPressed: () =>
                                _sendMessage(_textEditingController.text),
                          ),
                        )
                      ],
                    ),
                  ))),
        ],
      ),
    ));
  }
}
