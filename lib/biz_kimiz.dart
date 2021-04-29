import 'package:flutter/material.dart';

class bizkimiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Biz Kimiz ?"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Text(
                  "Bu Proje Abdullah Yılmaz tarafından tasarlanıp düzenlenmiştir."),
            ),
          ],
        ),
      ),
    );
  }
}
