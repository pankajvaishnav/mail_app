import 'package:flutter/material.dart';
import 'package:selectable/selectable.dart';

class Noice extends StatelessWidget {
  const Noice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // title: Text('Weight Tracker'),
              pinned: true,
              floating: false,
              forceElevated: innerBoxIsScrolled,
              actions: const [
                Icon(Icons.archive_outlined),
                SizedBox(
                  width: 24,
                ),
                Icon(Icons.delete_outline),
                SizedBox(
                  width: 24,
                ),
                Icon(Icons.mail_outline),
                SizedBox(
                  width: 24,
                ),
                Icon(Icons.more_vert),
                SizedBox(
                  width: 12,
                ),
              ],
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
        body: InteractiveViewer(
            // boundaryMargin: const EdgeInsets.all(20.0),
            minScale: 0.1,
            maxScale: 2.6,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Selectable(
                    selectWordOnDoubleTap: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 54,
                            width: MediaQuery.of(context).size.width * 0.6,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/noise.webp",
                              height: 32,
                              width: 100,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "THANK YOU FOR PLACING YOUR ORDER WITH US.",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Your order number: 2343881 has been confirmed.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "NOTE:",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Please be aware that if your address lies within a designated COVID-19 containment and under lockdown zone, Noise will only be able to deliver your order as soon as government regulations allow.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          color: Colors.grey[100],
                          padding: const EdgeInsets.all(16),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "REGISTERED ADDRESS:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Mesh ., MeshMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102, BANGALORE, Karnataka, 560102, India",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Here's your order:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                        left: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                        bottom: BorderSide(
                                            width: 0.3, color: Colors.grey)),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Item",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                        left: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                        bottom: BorderSide(
                                            width: 0.3, color: Colors.grey)),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                        left: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                        bottom: BorderSide(
                                            width: 0.3, color: Colors.grey)),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Qty",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.3, color: Colors.grey),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          height: 160,
                          decoration: const BoxDecoration(
                            border: Border(
                                left:
                                    BorderSide(width: 0.3, color: Colors.grey),
                                right:
                                    BorderSide(width: 0.3, color: Colors.grey),
                                bottom:
                                    BorderSide(width: 0.3, color: Colors.grey)),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 160,
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Text(
                                      "1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                              width: 0.3, color: Colors.grey),
                                          right: BorderSide(
                                              width: 0.3, color: Colors.grey)),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Noise Nerve Neckband Earphones with Mic - Cobalt Blue",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 14),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 0.3, color: Colors.grey),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 14),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                              width: 0.3, color: Colors.grey)),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Rs. 999.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 14),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Total: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              "Rs. 999.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Image.asset("assets/boy-img.webp"),
                        Image.asset("assets/girl-img.webp"),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "We will let you know as soon as your order is shipped. In the meantime, if there’s anything we can help you with, just fill out a form HERE and we’ll get right back to you! We’re available from 9:30AM to 6:00PM from Monday to Saturday. ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Stay safe and thank you for your patience.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Text(
                                      "Please Note:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Noise or its employees will never contact you with any special offers including lucky draws, lotteries or exclusive prizes. Please do not share your personal or bank account details over the phone or via email to stay protected against any kind of fraudulent deals.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 32,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "CONNECT WITH US",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/fb.png",
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/ig.webp",
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/x.png",
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/yt.png",
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Image.asset(
                                          "assets/li.png",
                                          height: 40,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
