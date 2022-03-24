import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:flutter/material.dart';
class Inbox extends StatelessWidget {
  static const routename="Inbox";
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Inbox Page")),
  bottomNavigationBar: Bottom_Nav(),
    );

  }
}
