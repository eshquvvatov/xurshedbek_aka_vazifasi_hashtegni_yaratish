import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HashtegClass extends StatefulWidget {
  const HashtegClass({Key? key}) : super(key: key);

  @override
  _HashtegClassState createState() => _HashtegClassState();
}

class _HashtegClassState extends State<HashtegClass> {
  String text = "jkhdslfka #lkjkfjs;lkjgs kjdfklsjdf #kjfgklsjf";
  List list = [];

  findHashteg(String text) {
    list = text.split(" ");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findHashteg(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: doHashTag(list),
    color: Colors.red,
    );
  }

  Widget doHashTag(List list) {
    if (list.isNotEmpty) {
      for (String i in list) {
        if (i.contains("#")) {
          return RichText(
              text: TextSpan(
                  text: i,
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                  recognizer: TapGestureRecognizer()..onTap = () {}));
        } else {
          return RichText(
              text: TextSpan(
                  text: i,
                  style: TextStyle(color: Colors.black, fontSize: 20)));
        }
      }
    }
    return Container();
  }
}
