import 'package:flutter/material.dart';

List<Map<String, dynamic>> games = [
    {
      "name": "Deadpool",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/deadpool.jpg",
      "icon": "assets/deadpool.jpg",
      "color": Colors.white60,
      "type": "Netmarble •  Roleplaying",
      "gb": "9.4 GB",
    },
    {
      "name": "Golf Battle",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/golf.jpeg",
      "icon": "assets/golf.jpeg",
      "color": Colors.lightGreen,
      "type": "Game • dummy",
      "gb": "9 GB",
    },
    {
      "name": "Subway",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/subway.jpg",
      "icon":"assets/subway.jpg",
      "color": Colors.lightBlue,
      "type": "Game • dummy",
      "gb": "23 GB",
    },
    {
      "name": "BGMI",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/pubg.jpg",
      "icon": "assets/pubg.jpg",
      "color": Colors.grey,
      "type": "Game • dummy",
      "gb": "4 GB",
    },
    {
      "name": "Talking Tom ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/talkingtom.jpeg",
      "icon": "assets/talkingtom.jpeg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "2.1 GB",
    },
    {
      "name": "Candy crush",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/candycrush.jpg",
      "icon": "assets/candycrush.jpg",
      "color": Colors.pink,
      "type": "Game • dummy",
      "gb": "94 GB",
    },
    {
      "name": "Cross word",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/crossword.jpg",
      "icon": "assets/crossword.jpg",
      "color": Colors.grey,
      "type": "Game • dummy",
      "gb": "100 MB",
    },
    {
      "name": "Temple run ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/templerun.jpg",
      "icon": "assets/templerun.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
    },
    {
      "name": "Free Fire ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/freefire.jpg",
      "icon": "assets/freefire.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
    },
    {
      "name": "Chess ",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/chess.jpg",
      "icon": "assets/chess.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
    },
    {
      "name": "Spirit Run",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/spiritrun.jpg",
      "icon": "assets/spiritrunicon.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
    },
    {
      "name": "Coin maser",
      "des": "Marvel at these fantastic super hero games",
      "img": "assets/coinmaster.jpg",
      "icon": "assets/coinmastericon.jpg",
      "color": Colors.green,
      "type": "Game • dummy",
      "gb": "150 MB",
    },
  ];

class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 370,
              width: double.infinity,
              child: Stack(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...games.map((e) => Container(
                            height: 330,
                            width: MediaQuery.of(context).size.width - 20,
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
                              borderRadius: BorderRadius.circular(15),
                              color: e["color"],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(e["img"]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  // child: Image.asset(e["img"],
                                  // fit: BoxFit.cover,),
                                ),
                                Text(e["des"],
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  // color: Colors.amber,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(e["icon"],
                                            fit: BoxFit.cover),
                                        margin: EdgeInsets.all(10),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text(e["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      Text(e["type"]),
                                      Text(e["gb"]),
                                    ],),
                                      SizedBox(width: 40),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Install"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Sponsored . ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Suggested for You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 135),
                    Icon(Icons.more_vert),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                     
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            (350 / 3) / (MediaQuery.of(context).size.width),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map(
                            (e) => Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(5),
                              // color: e["color"],
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(e["img"])),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 250,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text(e["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      Text(e["type"]),
                                      Text(e["gb"]),
                                    ],)
                                  )
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
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
                  ...games.map(
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
           Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Sponsored . ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Suggested for You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 135),
                    Icon(Icons.more_vert),
                  ],
                ),
            Column(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                     
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            (350 / 3) / (MediaQuery.of(context).size.width),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map(
                            (e) => Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(5),
                              // color: e["color"],
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(e["img"])),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 250,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text(e["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      Text(e["type"]),
                                      Text(e["gb"]),
                                    ],)
                                  )
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Sponsored . ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Suggested for You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 135),
                    Icon(Icons.more_vert),
                  ],
                ),
            Column(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                     
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            (350 / 3) / (MediaQuery.of(context).size.width),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map(
                            (e) => Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(5),
                              // color: e["color"],
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(e["img"])),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 250,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text(e["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      Text(e["type"]),
                                      Text(e["gb"]),
                                    ],)
                                  )
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    )
                  ],
                ),
                
          ],
          
          
          ),
          ],
          ),
          ]),
     ) ]),
          );
          
          
          
  }
}
