import 'package:flutter/material.dart';

class TextInputWIdget extends StatefulWidget {
  final Function(String) callback;

  TextInputWIdget(this.callback);

  @override
  _TextInputWIdgetState createState() => _TextInputWIdgetState();
}

class _TextInputWIdgetState extends State<TextInputWIdget> {
  final controller =
      TextEditingController(); // Za pomocą kontrolera pobierany dane wpisane w polu tekstowym przez urzytkownika

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:
          controller, // Za pomocą kontrolera pobierany dane wpisane w polu tekstowym przez urzytkownika
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message_sharp),
          labelText: 'Message',
          suffixIcon: IconButton(
            icon: Icon(Icons.send_sharp),
            splashColor: Colors.orange,
            tooltip: "Post Message",
            onPressed: () => {click()},
          )),
    );
  }
}
