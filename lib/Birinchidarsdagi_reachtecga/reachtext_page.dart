import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RichTixt extends StatefulWidget {
  static const String id = "home_page";

  const RichTixt({Key? key}) : super(key: key);

  @override
  _RichTixtState createState() => _RichTixtState();
}

class _RichTixtState extends State<RichTixt> {
  void fireToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Instagram"),
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
                text: "We'll devide the ",
                style: const TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  TextSpan(
                      text: "#text",
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          fireToast("Hash tag #text");
                        }),
                  const TextSpan(
                      text: " into ", style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "#two",
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        fireToast("Hash tag #two");
                      }),
                  const TextSpan(
                      text: ' parts ',
                      style: TextStyle(color: Colors.black)
                  )
                ]),
          ),
        ));
  }
}