import 'package:flutter/material.dart';
import 'package:jobs_mobile_app_ui/color_style.dart';
import 'package:jobs_mobile_app_ui/widget/regular_text.dart';
import 'package:jobs_mobile_app_ui/widget/small_text.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14)),
              ),
              child: Image.asset(
                'assets/images/image1.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(
                  right: 45, left: 45, top: 20, bottom: 43),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 1.4,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/image 2.png',
                      width: MediaQuery.of(context).size.height / 11.44,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: SmallTextWidget(
                      text: 'Ronald Richards',
                      color: purpleColor,
                    ),
                    trailing: const Icon(Icons.star_border_rounded),
                  ),
                  RegularTextWidget(
                      text:
                          'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.'),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SmallTextWidget(
                    text: 'August 7, 2017',
                    color: const Color(0xffC8C8C8),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: RegularTextWidget(
                        text: 'Apply',
                        color: Colors.white,
                      ),
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(purpleColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
