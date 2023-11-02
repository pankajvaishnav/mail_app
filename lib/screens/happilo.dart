import 'package:flutter/material.dart';
import 'package:selectable/selectable.dart';

class Happilo extends StatelessWidget {
  const Happilo({super.key});

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
                  padding: const EdgeInsets.all(20),
                  child: Selectable(
                    selectWordOnDoubleTap: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/email-img1.webp",
                          // height: 60,
                          width: 140,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "ORDER #226324",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Thank you for your purchase!",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Hi Sparks, we're getting your order ready to be shipped. We will notify you when it has been sent.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "View your order",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "or ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: "Visit our store",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500))
                          ])),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Text(
                          "Order Summary",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/item-img.avif",
                                  height: 72,
                                )),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Happilo 100% Natural Premium California Almonds × 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[800],
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    "200g",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            )),
                            Text(
                              "₹275.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Discount",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700],
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  "assets/discnt.png",
                                  height: 16,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "PREPAID",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700],
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Text(
                              "-₹18.75",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                  fontSize: 16),
                            ),
                            Text(
                              "₹256.25",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shipping",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                  fontSize: 16),
                            ),
                            Text(
                              "₹100.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Taxes",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                  fontSize: 16),
                            ),
                            Text(
                              "₹0.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 32,
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700],
                                  fontSize: 16),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "₹356.25",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey[800],
                                      fontSize: 24),
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                    text: "You saved ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[700],
                                        fontSize: 16),
                                  ),
                                  TextSpan(
                                    text: "₹18.75",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[800],
                                        fontSize: 16),
                                  ),
                                ])),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Text(
                          "Customer information",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          "Shipping address",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "SparksMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "India",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Text(
                          "Billing address",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "SparksMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "India",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Text(
                          "Shipping method",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Standard",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Text(
                          "Billing method",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Shopflo",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Divider(
                          height: 64,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text:
                                "If you have any questions, reply to this email or contact us at ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                                fontSize: 16),
                          ),
                          const TextSpan(
                            text: "care@happilo.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                                fontSize: 14),
                          ),
                        ])),
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
