import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:scrolling_view_page/detay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.brown.withOpacity(0.8),
        child: TabBar(
            indicatorColor: Colors.grey,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.white,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
              ),
              Tab(
                icon: Icon(Icons.navigation, color: Colors.white, size: 22),
              ),
              Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.white, size: 22),
              ),
            ]),
      ),
      body: ListView(children: [
        Stack(children: [
          Row(children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 950,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/Fonts/image1.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(left: 50, top: 60, right: 50),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detay(imgPath: "Assets/Fonts/image2.jpg")));
              },
              child: Hero(
                tag: "Assets/Fonts/image2.jpg",
                child: Container(
                  width: 280,
                  height: 140,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage("Assets/Fonts/image2.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 240,
            right: 50,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detay(imgPath: "Assets/Fonts/image3.jpg")));
              },
              child: Hero(
                tag: "Assets/Fonts/image3.jpg",
                child: Container(
                  width: 280,
                  height: 140,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage("Assets/Fonts/image3.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 420,
            right: 50,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detay(imgPath: "Assets/Fonts/image4.jpg")));
              },
              child: Hero(
                tag: "Assets/Fonts/image4.jpg",
                child: Container(
                  width: 280,
                  height: 140,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage("Assets/Fonts/image4.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 600,
            right: 50,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detay(imgPath: "Assets/Fonts/image5.jpg")));
              },
              child: Hero(
                tag: "Assets/Fonts/image5.jpg",
                child: Container(
                  width: 280,
                  height: 140,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage("Assets/Fonts/image5.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 780,
            right: 50,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detay(imgPath: "Assets/Fonts/image6.jpg")));
              },
              child: Hero(
                tag: "Assets/Fonts/image6.jpg",
                child: Container(
                  width: 280,
                  height: 140,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage("Assets/Fonts/image6.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
