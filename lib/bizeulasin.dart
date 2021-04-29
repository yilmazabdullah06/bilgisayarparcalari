import 'package:flutter/material.dart';

class bizeulasin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Bize Ulaşın"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Text("+90 534 915 50 19"),
            ),
            Container(
              width: 300,
              child: Text("yilmazabdullah0606@gmail.com"),
            )
          ],
        ),
      ),
    );
  }
}
