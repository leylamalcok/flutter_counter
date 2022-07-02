import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPage();
}

class _MyCounterPage extends State<MyCounterPage> {
  int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint('myhome page build çalıştı');
    return Scaffold(
      appBar: AppBar(
        title: Text('My counter AppBar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "BUTONA BASILMA MİKTARI : ",
            style: TextStyle(fontSize: 24),
          ),
          //EKRANA KAÇ KEZ BASILDIĞINI GÖSTEREN SAYI BÖLÜMÜ
          Text(
            _sayac.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Butona tıklandı ve sayaç :$_sayac');
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}
