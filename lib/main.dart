import 'package:flutter/material.dart';

void main() {
  runApp(mein_APP());
}

class mein_APP extends StatelessWidget {
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

class DasEssen extends StatefulWidget {
  @override
  _DasEssenState createState() => _DasEssenState();
}

class _DasEssenState extends State<DasEssen> {

  int suppe_No=1;
  int haupt_essen_No=1;
  int nachtisch_No=1;

List<String> suppe=["Mercimek","Tarhana","Tavuk C","Dugun C","Yogurtlu C"];
List<String> hauptEssen=["Karnı Yarık ","Mantı","Icli Köfte","Balık"];
List<String> nachTisch=["Fıstık Sarma","Baklava","Sütlac","Kazan Dibi","Dondurma"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/corba_$suppe_No.jpg'),
            ),
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  if(suppe_No<=4)
                    suppe_No=suppe_No+1;
                });
                print("Tiklandi");
              },
              child: Text(suppe[suppe_No-1])),
          Container(
            width: 150,
            child:Divider(
              height: 10,
              color: Colors.purple,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/yemek_$haupt_essen_No.jpg'),
            ),
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  if(haupt_essen_No<=4){
                  haupt_essen_No=haupt_essen_No+1;}
                });

                print('tiklandi ve yemek no = $haupt_essen_No' );
              },
              child: Text(hauptEssen[haupt_essen_No-1]),
          ),
          Container(
            width: 150,
            child:Divider(
              height: 10,
              color: Colors.purple,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/tatli_$nachtisch_No.jpg'),

            ),
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  if(nachtisch_No<=4)
                    nachtisch_No=nachtisch_No+1;
                });
                print('Tiklandi');
              },
              child: Text(nachTisch[nachtisch_No-1])),
          Container(
            width: 150,
            child:Divider(
              height: 10,
              color: Colors.purple,
            ),
          ),

        ],
      ),
    );
  }
}
