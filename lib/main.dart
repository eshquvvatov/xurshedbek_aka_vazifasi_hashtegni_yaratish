import 'package:flutter/material.dart';

import 'Birinchidarsdagi_reachtecga/hashteg_class.dart';
import 'Birinchidarsdagi_reachtecga/reachtext_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HashtegClass(),
    );
  }
}
