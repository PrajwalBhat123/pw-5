import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pages/Startup.dart';
import '/widgets/custom_appbar.dart';
import '/widgets/custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorsTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorsTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll == true;
    }

    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.black38,
      body: NotificationListener(
          onNotification: scrollListner,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(50, 120, 50, 30),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text("1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 23)),
                                          Text("Streak",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("120",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 23)),
                                          Text("kCal",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("25",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 23)),
                                          Text("Minutes",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13))
                                        ],
                                      )
                                    ]),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "Daily Yoga",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Startup()),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 20),
                                        child: Stack(
                                          children: [
                                            Container(
                                                height: 150,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          "https://tse2.mm.bing.net/th?id=OIP.e5gkQ1YBkzqKgzzB76aCNAHaF7&pid=Api&P=0"),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)))),
                                            Container(
                                              height: 150,
                                              color: Colors.black26,
                                            ),
                                            Positioned(
                                              right: 20,
                                              left: 10,
                                              top: 10,
                                              child: Text(
                                                "Yoga for begineers",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                            Positioned(
                                              right: 30,
                                              left: 10,
                                              top: 38,
                                              child: Text(
                                                "Last time : 2 Nov",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 20),
                                      child: Stack(
                                        children: [
                                          Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(
                                                        "https://tse2.mm.bing.net/th?id=OIP.e5gkQ1YBkzqKgzzB76aCNAHaF7&pid=Api&P=0"),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              30)))),
                                          Container(
                                            height: 150,
                                            color: Colors.black26,
                                          ),
                                          Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 10,
                                            child: Text(
                                              "Yoga for begineers",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Positioned(
                                            right: 30,
                                            left: 10,
                                            top: 38,
                                            child: Text(
                                              "Last time : 2 Nov",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "Yoga for You",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 20),
                                      child: Stack(
                                        children: [
                                          Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(
                                                        "https://tse2.mm.bing.net/th?id=OIP.e5gkQ1YBkzqKgzzB76aCNAHaF7&pid=Api&P=0"),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              30)))),
                                          Container(
                                            height: 150,
                                            color: Colors.black26,
                                          ),
                                          Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 10,
                                            child: Text(
                                              "Yoga for begineers",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Positioned(
                                            right: 30,
                                            left: 10,
                                            top: 38,
                                            child: Text(
                                              "Last time : 2 Nov",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 20),
                                      child: Stack(
                                        children: [
                                          Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(
                                                        "https://tse2.mm.bing.net/th?id=OIP.e5gkQ1YBkzqKgzzB76aCNAHaF7&pid=Api&P=0"),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              30)))),
                                          Container(
                                            height: 150,
                                            color: Colors.black26,
                                          ),
                                          Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 10,
                                            child: Text(
                                              "Yoga for begineers",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Positioned(
                                            right: 30,
                                            left: 10,
                                            top: 38,
                                            child: Text(
                                              "Last time : 2 Nov",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Custom_appbar(
                        animationController: _animationController,
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        colorsTween: _colorsTween,
                        homeTween: _homeTween,
                        yogaTween: _yogaTween,
                        iconTween: _iconTween,
                        drawerTween: _drawerTween)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
