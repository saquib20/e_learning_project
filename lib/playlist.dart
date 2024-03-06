import 'package:e_learning_project/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class platlist extends StatefulWidget {
  const platlist({super.key});

  @override
  State<platlist> createState() => _platlistState();
}

class _platlistState extends State<platlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xffe1eaff),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(
                0xff2657ce,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Videos for Learning',
              style: TextStyle(
                color: Color(0xff3657ce),
                fontSize: 27,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Education is the key to success in life, and teachers make a lasting impact in the lives of their students"),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('Welcome to Flutter'),
                        subtitle: Text('What is Flutter?'),
                        trailing: Icon(Icons.done),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('Flutter FrameWork'),
                        subtitle: Text('Frameworks'),
                        trailing: Icon(Icons.done),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('NodeJs Playlist'),
                        subtitle: Text('What is nodejs.'),
                        trailing: Icon(Icons.pending),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('MongoDB'),
                        subtitle: Text('Starting with MongoDB'),
                        trailing: Icon(Icons.pending_actions),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('What is JavaScript'),
                        subtitle: Text('javacript'),
                        trailing: Icon(Icons.dangerous),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('Wireless Sensor Network'),
                        subtitle: Text('What is WSN?'),
                        trailing: Icon(Icons.pending_actions_outlined),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('Bluetooth Architecture'),
                        subtitle: Text('What is Bluetooth?'),
                        trailing: Icon(Icons.pending_actions_outlined),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('Flutter Animation'),
                        subtitle: Text('What is Animation in Flutter?'),
                        trailing: Icon(Icons.pending_actions_outlined),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.play_arrow),
                        title: Text('Fundamental of Design'),
                        subtitle: Text('Designs Fundamental '),
                        trailing: Icon(Icons.pending_actions_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
