import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spinecode_task/utils/color_constant/color_constants.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.primaryLight,
      appBar: AppBar(
        backgroundColor: AppColor.primaryLight,
        leading: Container(
          margin: EdgeInsets.all(10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColor.white,
            size: 15,
          ),
        ),
        title: Text(
          "Muneef",
          style: TextStyle(fontSize: 15, color: AppColor.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/direct-normal.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/sms-notification.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/Ellipse 50.png'),
                        Text(
                          "Muneef",
                          style: TextStyle(color: AppColor.white, fontSize: 10),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShoppingBannerContainer(
                      color: AppColor.shoppingBanner,
                    ),
                    ShoppingBannerContainer(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff2F3C5066),
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/simple-icons_puma.png'),
                        Text(
                          "Puma",
                          style: TextStyle(color: AppColor.white),
                        ),
                      ],
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "fsdfsf",
                    style: TextStyle(color: AppColor.white, fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: AppColor.primary, fontSize: 20),
                  ),
                ],
              ),
            ),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.9, crossAxisCount: 2),
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Color(0xff2F3C5066),
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              // color: Colors.amber,
                              width: size.width,
                              child: Image.asset("assets/Rectangle 17369.png"),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                // width: 80,
                                // height: 20,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black38,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/coin.png",
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '12900',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "nike",
                          style: TextStyle(color: AppColor.color1),
                        ),
                        Text(
                          "nike force low ",
                          style: TextStyle(color: AppColor.white, fontSize: 20),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class ShoppingBannerContainer extends StatelessWidget {
  final Color color;
  const ShoppingBannerContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "jkkkhjjdffghjk",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  "jkkkhjjdffghjk\nsdfghjkl\djjdjdljaslj\nawaeaxaa",
                  style: TextStyle(color: AppColor.white),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            "assets/Group 34623.png",
            width: 100,
          )
        ],
      ),
    );
  }
}
