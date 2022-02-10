import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Message page"),
      ),
    );
  }
}
