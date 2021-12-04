import 'package:flutter/material.dart';

void main() => runApp(WA());

class WA extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/noticieros.televisa.com/wp-content/uploads/2020/09/vicente-el-perrito-instagram-rescatame-bogota.jpg?fit=1080%2C609&ssl=1"),
            ),
            title: Column(
              children: [
                Text(
                  "Vicente",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(
                  "últ. vez hoy a las 21:08",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            actions: [
              Icon(
                Icons.add_call,
              ),
              Icon(
                Icons.attach_file,
              ),
              Icon(
                Icons.settings,
              ),
            ],
          ),
          body: Stack(
            children: [
              Image.network(
                "https://pbs.twimg.com/media/ENYqsrtU8AAP07m.jpg",
                fit: BoxFit.fill,
                height: 1080,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                width: 350,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
                  color: Colors.white,
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.emoji_emotions, color: Colors.teal),
                      suffixIcon: Icon(Icons.photo_camera, color: Colors.teal),
                      hintText: "Escribir mensaje",
                    ),
                  ),
                ),
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(100, 15, 0, 100),
                children: <Widget>[
                  Card(
                    color: Colors.yellow[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    child: ListTile(
                      trailing: Icon(Icons.done_all, color: Colors.blueAccent),
                      title: Text("Hey"),
                      subtitle: Text("20:58", textAlign: TextAlign.end),
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(0, 100, 100, 100),
                children: <Widget>[
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                      trailing: Icon(Icons.done_all, color: Colors.blueAccent),
                      title: Text("¿Cómo estas?"),
                      subtitle: Text("21:00", textAlign: TextAlign.end),
                    ),
                  )
                ],
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(100, 185, 0, 100),
                children: <Widget>[
                  Card(
                    color: Colors.yellow[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    child: ListTile(
                      trailing: Icon(Icons.done_all, color: Colors.blueAccent),
                      title: Text("Bien bro y tú que tal?"),
                      subtitle: Text("21:05", textAlign: TextAlign.end),
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(0, 270, 100, 100),
                children: <Widget>[
                  Card(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                      trailing: Icon(Icons.done_all, color: Colors.blueAccent),
                      title: Text("Igual, igual. ¿Qué haciendo?"),
                      subtitle: Text("21:08", textAlign: TextAlign.end),
                    ),
                  )
                ],
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(100, 355, 0, 100),
                children: <Widget>[
                  Card(
                    color: Colors.yellow[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    child: ListTile(
                      trailing: Icon(Icons.done_all),
                      title: Text("Aquí dandole un rato al WZ y tú?"),
                      subtitle: Text("21:11", textAlign: TextAlign.end),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                child: FloatingActionButton(
                  backgroundColor: Colors.teal,
                  onPressed: () {},
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
