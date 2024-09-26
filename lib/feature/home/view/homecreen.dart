import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spinecode_task/utils/color_constant/color_constants.dart';

class Homecreen extends StatelessWidget {
  const Homecreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.primaryLight,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        leading: Image.asset("assets/menu.png"),
        title: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Muneef",
                  style: TextStyle(fontSize: 15, color: AppColor.white),
                ),
                Text(
                  "Muneef",
                  style: TextStyle(fontSize: 13, color: AppColor.white),
                ),
              ],
            )
          ],
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
          children: [
            Container(
              height: size.height * 0.5,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '14000 / ',
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' 15000',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      TextSpan(
                                        text: ' dfd',
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "demo",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 15,
                              padding: EdgeInsets.only(right: 50),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                height: 15,
                                width: 150,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      AppColor.color1,
                                      Colors.green,
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25,
                        child: Image.asset("assets/Group.png"),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: AppColor.color1,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColor.primary,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/Frame.png"),
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "26",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 204, 200, 225)),
                                ),
                                Text(
                                  "fsdk",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 204, 200, 225)),
                                ),
                                Text(
                                  "fdsf26",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 204, 200, 225)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 57,
                        left: 57,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: HomerowContainer(
                          text: "55 555",
                          image: "assets/Frame 237704.png",
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: HomerowContainer(
                              text: "1000", image: "assets/coin.png"))
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              // padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  gradient: LinearGradient(colors: [
                    AppColor.primary,
                    Colors.pinkAccent,
                  ]),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "hjhkj fsdjfksdfdsh",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          "hjhkj fjsdfkjsdfdj h",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(204, 180, 177, 177),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: AppColor.white,
                              ),
                              Text(
                                "khjhj",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/Group 237713.png',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
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
            ListView.builder(
                itemCount: 20,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListviewContainer();
                })
          ],
        ),
      ),
    );
  }
}

class ListviewContainer extends StatelessWidget {
  const ListviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blueGrey)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '19 hhhh',
                  style: TextStyle(color: AppColor.primary, fontSize: 15),
                ),
                Row(
                  children: [
                    Text(
                      "100 pt",
                      style: TextStyle(color: Colors.pink),
                    ),
                    Text(
                      "•",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      "100 ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "100",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "10, 100 ggg",
            style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}

class HomerowContainer extends StatelessWidget {
  final String text;
  final String image;
  const HomerowContainer({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: AppColor.color1,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Column(
        children: [
          Text(
            "$text",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("$image"),
              Text(
                "khjhj",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      )),
    );
  }
}
