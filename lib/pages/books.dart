  
import 'package:flutter/material.dart';

List<Map<String, dynamic>> books = [
    {
      "name": "Deadpool",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/deadpool.jpg",
      "icon": "assets/deadpool.jpg",
      "color": Colors.white60,
      "type": "Netmarble •  Roleplaying",
      "gb": "9.4 GB",
      "index":"1",
    },
    {
      "name": "Golf Battle",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/golf.jpeg",
      "icon": "assets/golf.jpeg",
      "color": Colors.lightGreen,
      "type": "Game • dummy",
      "gb": "9 GB",
      "index":"2",
    },
    {
      "name": "Subway",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/subway.jpg",
      "icon":"assets/subway.jpg",
      "color": Colors.lightBlue,
      "type": "Game • dummy",
      "gb": "23 GB",
      "index":"3",
    },
    {
      "name": "BGMI",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/pubg.jpg",
      "icon": "assets/pubg.jpg",
      "color": Colors.grey,
      "type": "Game • dummy",
      "gb": "4 GB",
      "index":"4",
    },
    {
      "name": "Talking Tom ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/talkingtom.jpeg",
      "icon": "assets/talkingtom.jpeg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "2.1 GB",
      "index":"5",
    },
    {
      "name": "Candy crush",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/candycrush.jpg",
      "icon": "assets/candycrush.jpg",
      "color": Colors.pink,
      "type": "Game • dummy",
      "gb": "94 GB",
      "index":"6",
    },
    {
      "name": "Cross word",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/crossword.jpg",
      "icon": "assets/crossword.jpg",
      "color": Colors.grey,
      "type": "Game • dummy",
      "gb": "100 MB",
      "index":"7",
    },
    {
      "name": "Temple run ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/templerun.jpg",
      "icon": "assets/templerun.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
      "index":"8",
    },
    {
      "name": "Free Fire ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/freefire.jpg",
      "icon": "assets/freefire.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
      "index":"9",
    },
    {
      "name": "Chess ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/chess.jpg",
      "icon": "assets/chess.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
      "index":"10",
    },
    {
      "name": "Spirit Run",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/spiritrun.jpg",
      "icon": "assets/spiritrunicon.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
      "index":"11",
    },
    {
      "name": "Coin maser",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/coinmaster.jpg",
      "icon": "assets/coinmastericon.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
      "index":"12",
    },
  ];
class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(

      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              labelPadding: EdgeInsets.all(10),
              isScrollable: true,
              indicatorColor: Color(0xff094fca),
              labelColor: Color(0xff094fca),
              tabs: [
                Tab(text: "Ebooks"),
                Tab(text: "Audiobooks"),
                Tab(text: "comics"),
                Tab(text: "Genres"),
                Tab(text: "Top selling"),
                 Tab(text: "New release"),
                  Tab(text: "Top free"),
              ]),
              
        ),
        body: TabBarView(children: [
          Ebooks(),
          Audiobooks(),
          comics(),
          Genres(),
          Topselling(),
          Newreleases(),
          Topfree(),


         

        ],
        ),
        //         bottomNavigationBar: NavigationBar(
        //   indicatorColor: Color(0xffc3e7ff),
        //   selectedIndex: 3,
        //   indicatorShape: OvalBorder(), 
        //   destinations: [],
        // ),
      ));
    
  }
}

class Ebooks extends StatefulWidget {
  const Ebooks({super.key});

  @override
  State<Ebooks> createState() => _EbooksState();
}

class _EbooksState extends State<Ebooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
            Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
        ],
      ),
        ],
      ),



      )
    );
  }
}

class Audiobooks extends StatefulWidget {
  const Audiobooks({super.key});

  @override
  State<Audiobooks> createState() => _AudiobooksState();
}

class _AudiobooksState extends State<Audiobooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
            Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
        ],
      ),
        ],
      ),



      )
    );
  }
}

class comics extends StatefulWidget {
  const comics({super.key});

  @override
  State<comics> createState() => _comicsState();
}

class _comicsState extends State<comics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
            Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
                      Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Top Sellers",style: TextStyle(fontSize: 20),),
                 Text("Most popular on google play"),
              ],
            ),
          ),
          Container(
              height: 130,
              width: double.infinity,
              //color: Colors.purple,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...books.map(
                    (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       // color: Colors.white,
                        image: DecorationImage(
                                          image: AssetImage(e["img"])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                      // color: Colors.purple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(e["name"]),
                            Text(e["gb"])
                          ],
                        ),
                      ),
                    
                    ),
                    
                  ),
                ],
              ),
            ),
        ],
      ),
        ],
      ),



      )

    );
  }
}


class Genres extends StatefulWidget {
  const Genres({super.key});

  @override
  State<Genres> createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
        child:  Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                   child: Icon(Icons.watch_outlined),
                ),
                SizedBox(width: 10,),
                Text("Arts & entertainment"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                 child: Icon(Icons.access_time_outlined),
                ),
                Text("Watch faces"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
               TextButton(
                onPressed: () {}, child: Icon(Icons.navigation_outlined)),
                Text("Android auto"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.edit)),
                Text("Art & Desing"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.crop_din_outlined)),
                Text("Augmented reality"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                 TextButton(onPressed: () {}, child:Icon(Icons.local_taxi)),
                Text("Auto & Vehicles"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
            //color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.face)),
                Text("Beauty"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                 TextButton(onPressed: () {}, child:Icon(Icons.book_online)),
                Text("Book & Reference"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.business_outlined)),
                Text("Business"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           //color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.star_border_outlined)),
                Text("Comics"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.sms_outlined)),
                Text("communication"),
              ],
            ),
      ),
       Container(
            height: 100,
            width: double.infinity,
           // color: Colors.purple,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child:Icon(Icons.favorite_outlined)),
                Text("Dating"),
              ],
            ),
      ),
      
      ],
             
                
    ),
      )

    );
  }
}

class Topselling extends StatefulWidget {
  const Topselling({super.key});

  @override
  State<Topselling> createState() => _TopsellingState();
}

class _TopsellingState extends State<Topselling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
      child: ListView(
        children: [
          ...books.map(
            (e) => Container(
              height: 90,
              width: double.infinity,
              child: Row(
                children: [
                  // SizedBox(width: 40),
                  // Text(
                  //   e["index"],
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(e["icon"])),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                      height: 100,
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e["name"],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(e["type"]),
                          Text(e["gb"]),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ));
    
  }
}

class Newreleases extends StatefulWidget {
  const Newreleases({super.key});

  @override
  State<Newreleases> createState() => _NewreleasesState();
}

class _NewreleasesState extends State<Newreleases> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Topfree extends StatefulWidget {
  const Topfree({super.key});

  @override
  State<Topfree> createState() => _TopfreeState();
}

class _TopfreeState extends State<Topfree> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}