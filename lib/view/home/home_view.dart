import 'package:fin_track/common/color_extension.dart';
import 'package:fin_track/common_widget/custom_arc_painter.dart';
import 'package:fin_track/common_widget/segment_button.dart';
import 'package:fin_track/common_widget/status_button.dart';
import 'package:fin_track/common_widget/subscription_home_row.dart';
import 'package:fin_track/common_widget/upcoming_bill_row.dart';
import 'package:fin_track/view/settings/settings_view.dart';
import 'package:fin_track/view/subscription_info/subscription_info_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscription = true;
  List subArr = [
    {"name": "Spotify", "icon": "assets/img/spotify_logo.png", "price": "9.99"},
    {
      "name": "Youtube Premium",
      "icon": "assets/img/youtube_logo.png",
      "price": "18.99",
    },
    {
      "name": "Microsoft OneDrive",
      "icon": "assets/img/onedrive_logo.png",
      "price": "29.99",
    },
    {
      "name": "Netflix",
      "icon": "assets/img/netflix_logo.png",
      "price": "15.99",
    },
  ];

  List bilArr = [
    {"name": "Spotify", "date": DateTime(2026, 06, 06), "price": "9.99"},
    {
      "name": "Youtube Premium",
      "date": DateTime(2026, 06, 10),
      "price": "18.99",
    },
    {
      "name": "Microsoft OneDrive",
      "date": DateTime(2026, 06, 15),
      "price": "29.99",
    },
    {"name": "Netflix", "date": DateTime(2026, 06, 20), "price": "15.99"},
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: media.width * 1.1,
              decoration: BoxDecoration(
                color: TColor.gray70.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),

              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/img/home_bg.png"),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: media.width * 0.05),
                        width: media.width * 0.72,
                        height: media.width * 0.72,
                        child: CustomPaint(painter: CustomArcPainter(end: 220)),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SettingsView(),
                                  ),
                                );
                              },
                              icon: Image.asset(
                                "assets/img/settings.png",
                                width: 25,
                                height: 25,
                                color: TColor.gray30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: media.width * 0.05),
                      Image.asset(
                        "assets/img/app_logo.png",
                        width: media.width * 0.25,
                        fit: BoxFit.contain,
                      ),

                      SizedBox(height: media.width * 0.07),

                      Text(
                        "\$1,235.00",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: media.width * 0.055),

                      Text(
                        "This Month's Bills",
                        style: TextStyle(
                          color: TColor.gray40,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: media.width * 0.07),

                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: TColor.border.withOpacity(0.15),
                            ),
                            color: TColor.gray60.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Text(
                            "See your budget",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: StatusButton(
                                title: "Active Subscriptions",
                                value: "12",
                                statusColor: TColor.secondary,
                                onPressed: () {},
                              ),
                            ),

                            const SizedBox(width: 8),

                            Expanded(
                              child: StatusButton(
                                title: "Highest Subscription",
                                value: "\$29.99",
                                statusColor: TColor.primary10,
                                onPressed: () {},
                              ),
                            ),

                            const SizedBox(width: 8),

                            Expanded(
                              child: StatusButton(
                                title: "Lowest Subscriptions",
                                value: "\$9.99",
                                statusColor: TColor.secondaryG,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SegmentButton(
                      title: "Your Subscriptions",
                      isActive: isSubscription,
                      onPressed: () {
                        setState(() {
                          isSubscription = !isSubscription;
                        });
                      },
                    ),
                  ),

                  Expanded(
                    child: SegmentButton(
                      title: "Upcoming Bills",
                      isActive: !isSubscription,
                      onPressed: () {
                        setState(() {
                          isSubscription = !isSubscription;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            if (isSubscription)
              ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};
                  return SubScriptionHomeRow(
                    sObj: sObj,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SubscriptionInfoView(sObj: sObj),
                        ),
                      );
                    },
                  );
                },
              ),

            if (!isSubscription)
              ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};
                  return UpcomingBillRow(sObj: sObj, onPressed: () {});
                },
              ),
            const SizedBox(height: 110),
          ],
        ),
      ),
    );
  }
}
