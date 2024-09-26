import 'package:flutter/material.dart';
import 'package:spinecode_task/utils/color_constant/color_constants.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColor.color1,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderRowContainer(
                  image: "assets/timer.png",
                  text: "10,00",
                ),
                HeaderRowContainer(
                  image: "assets/heart-circle.png",
                  text: "55,88",
                ),
                HeaderRowContainer(
                  image: "assets/routing.png",
                  text: "66, 77",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderRowContainer extends StatelessWidget {
  final String image;
  final String text;
  const HeaderRowContainer({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image.asset(
            '$image',
            width: 20,
          ),
          Text(
            "$text",
            style: TextStyle(
                color: AppColor.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "time",
            style: TextStyle(color: AppColor.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
