import 'package:flutter/material.dart';

void main() => runApp(WA());

class WA extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/noticieros.televisa.com/wp-content/uploads/2020/09/vicente-el-perrito-instagram-rescatame-bogota.jpg?fit=1080%2C609&ssl=1"),
            ),
            title: Column(
              children: [
                Text(
                  "Vicente",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "últ. vez hoy a las 9:49",
                  style: TextStyle(fontSize: 14),
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
                      prefixIcon: Icon(Icons.emoji_emotions),
                      suffixIcon: Icon(Icons.photo_camera),
                      hintText: "Escribir mensaje",
                    ),
                  ),
                ),
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(100, 0, 0, 100),
                children: const [
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    trailing: Icon(
                      Icons.done_all,
                    ),
                    title: Text("Hey"),
                    subtitle: Text("20:58"),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(0, 60, 100, 100),
                children: const [
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    trailing: Icon(
                      Icons.done_all,
                    ),
                    title: Text("¿Cómo estas?"),
                    subtitle: Text("21:00"),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
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
