import 'package:flutter/material.dart';
import 'package:jobs_mobile_app_ui/color_style.dart';
import 'package:jobs_mobile_app_ui/widget/regular_text.dart';
import 'package:jobs_mobile_app_ui/widget/small_text.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List assetList = [
      'assets/images/image 2.png',
      'assets/images/image 3.png',
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
            margin: const EdgeInsets.only(left: 54, right: 54, top: 45),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: purpleColor,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          'Hi Musab!',
                          style: TextStyle(
                              color: mainColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/profile.png',
                      height: 51,
                      width: 51,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: secondaryColor,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'Search',
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 41.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 162,
                        decoration: BoxDecoration(
                            color: const Color(0xffA262F3),
                            borderRadius: BorderRadius.circular(14)),
                        child: Image.asset(
                          'assets/images/image1.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SmallTextWidget(
                        text: 'Ronald Richards',
                        color: purpleColor,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      RegularTextWidget(
                          text:
                              'Amet minim mollit non deserunt ullamco est sit consequatamet.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SmallTextWidget(
                        text: 'August, 2017',
                        color: const Color(0xffC8C8C8),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 41.0,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: assetList.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: Image.asset(assetList[index]),
                        title: RegularTextWidget(text: 'Bessie Copper'),
                        subtitle: RegularTextWidget(
                          text: 'Marketing Coordinator',
                          color: purpleColor,
                        ),
                        trailing: const Icon(Icons.star_outline_rounded),
                      );
                    }),
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
