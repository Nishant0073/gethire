import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 25.fh,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25.fh,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      AutoSizeText(" Subscription",
                          style: getFontStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.fh,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Container(
                    height: 350.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE9E9E9),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15.fh,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.fw),
                            child: Row(
                              children: [
                                AutoSizeText("Select Pack",
                                    style: getFontStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.fh,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.fh,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.fw, vertical: 5.fh),
                            child: Container(
                              height: 35.fh,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.fw),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText("Pack",
                                          style: getFontStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.fh,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          )),
                                      AutoSizeText("Duration",
                                          style: getFontStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.fh,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          )),
                                      AutoSizeText("Pay Now",
                                          style: getFontStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.fh,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          subscriptioncard(
                            name: "Stratup",
                            duration: "30 Days",
                            price: "Pay Rs.500",
                          ),
                          subscriptioncard(
                            name: "Basic",
                            duration: "60 Days",
                            price: "Pay Rs.700",
                          ),
                          subscriptioncard(
                            name: "Advance",
                            duration: "90 Days",
                            price: "Pay Rs.1000",
                          ),
                          subscriptioncard(
                            name: "Premium",
                            duration: "180 Days",
                            price: "Pay Rs.1500",
                          ),
                          subscriptioncard(
                            name: "Priemium+",
                            duration: "365 Days",
                            price: "Pay Rs.3000",
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ])),
    );
  }
}

class subscriptioncard extends StatelessWidget {
  final String name;
  final String duration;
  final String price;

  const subscriptioncard({
    super.key,
    required this.name,
    required this.duration,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.fw, vertical: 5.fh),
      child: Container(
        height: 35.fh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.fw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(name,
                    style: getFontStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                AutoSizeText(duration,
                    style: getFontStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.fh,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                Container(
                  height: 25.fh,
                  width: 80.fw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.primaryColor),
                  child: Center(
                    child: AutoSizeText(price,
                        style: getFontStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10.fh,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
