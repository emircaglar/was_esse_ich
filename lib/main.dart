import 'package:flutter/material.dart';

void main() {
  runApp(essen());
}

class essen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Was esse ich heute",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: DasEssen(),
      ),
    );
  }
}

class DasEssen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/corba_2.jpg'),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/yemek_3.jpg'),
            ),
          ),
          TextButton(
              onPressed: (){
                print('tiklandi');
              },
              child: Text('Corba',style: TextStyle,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/tatli_1.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
