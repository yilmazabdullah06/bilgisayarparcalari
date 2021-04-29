import 'package:flutter/material.dart';

class hakkimda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Hakkımda "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Text(
                    "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006018 numaralı Abdullah Yılmaz tarafından 30 Nisan 2021 günü yapılmıştır."),
              ),
            ],
          ),
        ));
  }
}
