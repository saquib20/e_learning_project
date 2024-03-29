import 'package:e_learning_project/CoursePage.dart';
import 'package:e_learning_project/info.dart';
import 'package:e_learning_project/playlist.dart';
import 'package:e_learning_project/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        '/coursePage': (context) => CoursePage(),
        '/setting': (context) => settings(),
        '/playlist': (context) => platlist(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Dashboards",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://github.com/kaushikchandru/onlinecourse/blob/master/assets/image/profilePic.png?raw=true"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "What do you \nwant to \nlearn today?",
              style: TextStyle(
                fontSize: 35,
                height: 1.3,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('Multimedia', 'Animation Course', 'img1',
                              Color(0xffff6a65), Color(0xffff5954)),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'Social Media',
                              'Social Media Monitoring',
                              'img2',
                              Color(0xffe9eefa),
                              Colors.white),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('Programmin', 'Python for everybody',
                              'img3', Color(0xffe9eefa), Colors.white),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                            'Graphic Design',
                            'Fundamentals of Design',
                            'img4',
                            Color(0xffbdcddfa),
                            Color(0xffcedaff),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.subscriptions),
                    color: Color(0xff2657ce),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => platlist(),
                          ));
                    },
                    icon: Icon(Icons.play_circle_filled),
                    color: Color(0xff2657ce).withOpacity(0.5),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const settings()),
                      );
                    },
                    icon: Icon(Icons.account_circle),
                    color: Color(0xff2657ce).withOpacity(0.5),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const info()),
                      );
                    },
                    icon: Icon(Icons.settings),
                    color: Color(0xff2657ce).withOpacity(0.5),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container courseWidget(String category, String title, String img,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          openCoursePage('$img', '$title');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$category',
                style: TextStyle(
                    color: (categoryColor == Color(0xffe9eefa)
                        ? Color(0xff2657ce)
                        : Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$title',
              style: TextStyle(
                color: (bgColor == Color(0xffff5954))
                    ? Colors.white
                    : Colors.black,
                fontSize: 20,
                height: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.red
                      : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == Color(0xffff5954))
                        ? Colors.white.withOpacity(0.5)
                        : Color(0xff2657ce).withOpacity(0.5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
                tag: '$img',
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/image/$img.png'),
                  )),
                ))
          ],
        ),
      ),
    );
  }

  void openCoursePage(String img, String title) {
    Navigator.pushNamed(context, '/coursePage',
        arguments: {'img': '$img', 'title': '$title'});
  }
}
