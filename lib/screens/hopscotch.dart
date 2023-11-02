import 'package:flutter/material.dart';
import 'package:selectable/selectable.dart';

class HopScotch extends StatelessWidget {
  const HopScotch({super.key});

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
                  padding: const EdgeInsets.all(16),
                  child: Selectable(
                    selectWordOnDoubleTap: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  left: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  right: BorderSide(
                                      width: 0.3, color: Colors.grey))),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              "assets/hopscotch.webp",
                              // height: 60,
                              width: 140,
                            ),
                          ),
                        ),
                        Container(
                          // height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  left: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  right: BorderSide(
                                      width: 0.3, color: Colors.grey))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order Shipped",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.pink.shade300,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Dear PremierMonk,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered it.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Request you to pay ₹169 to the courier associate visiting you.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "We look forward to seeing you again.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Image.asset("assets/gif.webp"),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  left: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  right: BorderSide(
                                      width: 0.3, color: Colors.grey))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "SHIPMENT DETAILS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Tracking ID: SF321527154HO",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "Sent through: Shadowfax",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 60,
                                  width: 220,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade300,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      "TRACK SHIPMENT",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                const Text(
                                  "*Please note that tracking ID may take up to 24 hours to get activated.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 48,
                                ),
                                const Text(
                                  "SHIPPED TO",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "PremierMonk",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "PremierMonk Pvt Ltd, 649, 13th Cross, 27th Main, mrk Sector 1, Bangalore 560102 Bangalore, Karnataka 560102",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "9886158353",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 0.3, color: Colors.grey),
                                    left: BorderSide(
                                        width: 0.3, color: Colors.grey),
                                    right: BorderSide(
                                        width: 0.3, color: Colors.grey))),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/slippers.webp",
                                    // width: 100,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    "Cutest Princess Pink Glitter Slippers On Alligator Clip",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    "Qty: 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    "₹69.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  left: BorderSide(
                                      width: 0.3, color: Colors.grey),
                                  right: BorderSide(
                                      width: 0.3, color: Colors.grey))),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Text(
                                  "Subtotal: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                Text(
                                  "₹69.0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.3, color: Colors.grey)),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Shipping: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "₹100.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Order Total: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "₹169.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/hposcoch-pink.webp",
                              height: 40,
                            )
                          ],
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
