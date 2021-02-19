import 'package:flutter/material.dart';
import 'dua.dart';
import 'tiga.dart';

void main() => runApp(
      MaterialApp(
        home: Halsatu(),
        title: "Tracking Covid",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/Halsatu': (BuildContext context) => new Halsatu(),
          '/Haldua': (BuildContext context) => new Dua(),
          '/Haltiga': (BuildContext context) => new Tiga(),
        },
      ),
    );

class Halsatu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
                child: Text('Pindah Halaman 1'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Halsatu()),
                  );
                }),
            RaisedButton(
                child: Text('Pindah Halaman 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dua()),
                  );
                }),
            RaisedButton(
                child: Text('Pindah Halaman 3'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tiga()),
                  );
                }),
          ]),
        ));
  }
}
