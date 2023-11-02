import 'package:email_app/screens/happilo.dart';
import 'package:email_app/screens/hopscotch.dart';
import 'package:email_app/screens/noice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = ScrollController();

  bool isPinned = true;
  List mails = [
    {
      "date": "29 Oct",
      "contact": "Happilo",
      "title": "Thank you for your purchase!",
      "body":
          "Hi Sparks, we're getting your order ready to be shipped. We will notify you when it has been sent.",
      "seen": false
    },
    {
      "date": "30 Oct",
      "contact": "Hopscotch",
      "title": "Order Shipped",
      "body":
          "Dear PremierMonk, We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered it.",
      "seen": false
    },
    {
      "date": "31 Oct",
      "contact": "Noice",
      "title": "THANK YOU FOR PLACING YOUR ORDER WITH US.",
      "body": "Your order number: 2343881 has been confirmed.",
      "seen": false
    }
  ];

  List<Color> colors = [
    Colors.green.shade300,
    Colors.orange.shade300,
    Colors.teal.shade300
  ];

  navigate(index) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Happilo()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HopScotch()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Noice()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              if (isPinned)
                SliverAppBar(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.menu,
                              size: 28,
                            ),
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Search",
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green.shade300),
                              child: const Center(
                                child: Text(
                                  "P",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pinned: isPinned,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  // bottom: TabBar(
                  //   tabs: <Tab>[
                  //     Tab(text: 'STATISTICS'),
                  //     Tab(text: 'HISTORY'),
                  //   ],
                  //   controller: _tabController,
                  // ),
                ),
            ];
          },
          body: Container(
            padding: const EdgeInsets.only(top: 0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollUpdateNotification &&
                      _scrollController.position.userScrollDirection ==
                          ScrollDirection.reverse) {
                    setState(() {
                      isPinned = false;
                    });
                    // User is scrolling down
                    // You can perform actions here when the user is scrolling down
                  } else if (scrollNotification is ScrollUpdateNotification &&
                      _scrollController.position.userScrollDirection ==
                          ScrollDirection.forward) {
                    setState(() {
                      isPinned = true;
                    });
                  }
                  return false; // Return false to allow the notification to continue propagating
                },
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: 20, //mails.length,
                  itemBuilder: (con, index) {
                    return InkWell(
                      onTap: () => navigate(index % 3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors[index % 3]),
                              child: Center(
                                child: Text(
                                  mails[index % 3]['contact'][0]
                                      .toString()
                                      .toUpperCase(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 26),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        mails[index % 3]['contact'],
                                        style: TextStyle(
                                            fontWeight: !mails[index % 3]
                                                    ['seen']
                                                ? FontWeight.w800
                                                : FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      mails[index % 3]['date'],
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                                Text(
                                  mails[index % 3]['title'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: !mails[index % 3]['seen']
                                          ? FontWeight.w800
                                          : FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        mails[index % 3]['body'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 16),
                                      ),
                                    ),
                                    const Icon(Icons.star_border)
                                  ],
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: !isPinned ? 60 : 140,
        child: FloatingActionButton(
          backgroundColor: Colors.red.shade50,
          onPressed: () {},
          // tooltip: 'Increment',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.edit_outlined),
              if (isPinned)
                const SizedBox(
                  width: 10,
                ),
              if (isPinned)
                const Text(
                  "Compose",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: !isPinned
          ? null
          : Container(
              height: 48,
              color: Colors.red.shade50,
              child: Row(children: [
                Expanded(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red.shade100,
                      ),
                      child: const Icon(Icons.mail),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 4),
                      decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.circular(25),
                          // color: Colors.red.shade100,
                          ),
                      child: const Icon(Icons.videocam_outlined),
                    ),
                  ),
                ),
              ]),
            ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
