import 'package:flutter/material.dart';
import './myHomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material App')),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name;
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                name))); //push - gdzie chcemy iść, pop - gdzie chcemy wrócić
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Your name',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.grey)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.check),
                    splashColor: Colors.orange,
                    onPressed: () => {click()},
                  )),
            )));
  }
}
