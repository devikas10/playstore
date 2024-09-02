import 'package:flutter/material.dart';
import 'package:playstore/pages/apps.dart';
import 'package:playstore/pages/books.dart';
//import 'package:playstore/pages/books.dart';


void main() {
  runApp(MaterialApp(
    home: playstore(),
  ));
}

List<Map<String, dynamic>> game= [
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
class playstore extends StatefulWidget {
  const playstore({super.key});

  @override
  State<playstore> createState() => _playstoreState();
}

class _playstoreState extends State<playstore> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 5,
      child: Scaffold(
        
        appBar: AppBar(
          leading: Container(
            height: 20,
            width: 20,
            padding: EdgeInsets.all(8),
            child: Image.asset(
              "assets/google-play.png",
            ),
          ),
          actions: [
            Icon(Icons.notifications_none_outlined),
            SizedBox(width: 20),
            CircleAvatar(
              foregroundImage: AssetImage("assets/profile.jpg"),
            ),
            SizedBox(width: 30),
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.all(10),
              isScrollable: true,
              indicatorColor: Color(0xff094fca),
              labelColor: Color(0xff094fca),
              tabs: [
                Tab(text: "For you"),
                Tab(text: "Top charts"),
                Tab(text: "Children"),
                Tab(text: "Premium"),
                Tab(text: "Categories"),
              ]),
        ),
        body: TabBarView(children: [
          _Foryou(),
          Topcgart(),
          Children(),
          Premium(),
          Categories()
          

        ],),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Color(0xffc3e7ff),
          selectedIndex: 3,
          indicatorShape: OvalBorder(),
          destinations: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/game-console.png"),
                  ),
                ),
                Text("Games"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Apps()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/apps.png"),
                  ),
                ),
                Text("Apps"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/search.png"),
                  ),
                ),
                Text("Search"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/tag.png"),
                  ),
                ),
                Text("Offers"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Books()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/agenda.png"),
                  ),
                ),
                Text("Books"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Foryou extends StatefulWidget {
  const _Foryou({super.key});

  @override
  State<_Foryou> createState() => __ForyouState();
}

class __ForyouState extends State<_Foryou> {
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
                    )
                  ],
                ),
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
                                 
                                ),
                               
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(e["img"],
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
            ),
          ],
        ),
    );
  }
}

class Topcgart extends StatefulWidget {
  const Topcgart({super.key});

  @override
  State<Topcgart> createState() => _TopcgartState();
}

class _TopcgartState extends State<Topcgart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        
              body: Expanded(
      child: ListView(
        children: [
          ...games.map(
            (e) => Container(
              height: 90,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    e["index"],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
    

    
  


class Children extends StatefulWidget {
  const Children({super.key});

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              // color: Colors.green,
              child: Image.asset("assets/pink.jpg", fit: BoxFit.cover),
            ),
            Container(
              height: 100,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Everything here is teacher approved",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Learn more"),
                  ),
                ],
              ),
            ),
           
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(30),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sing along and learn with Cocomelon",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text("Music, learn and fun"),
                    ],
                  )
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              //color: Colors.purple,
              child: Text("New & Updated",style: 
              TextStyle(
                fontSize: 15,
              ),),

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
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              //color: Colors.purple,
              child: Text("Recommended for you,",style: TextStyle(
                fontSize: 15,
              ),),
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
             Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              //color: Colors.purple,
              child: Text("Offline games",style: TextStyle(
                fontSize: 15,
              ),),
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
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              //color: Colors.purple,
              child: Text("Stylised games",style: TextStyle(
                fontSize: 15,
              ),),
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
           
          ],
        ),
      ),
    );
  }
}
class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                Text("Watch apps"),
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