import 'package:flutter/material.dart';
import 'package:flutter_bloc_cleanarch/config/consts.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Username",
              style: TextStyle(color: primaryColor),
            ),
            InkWell(
              onTap: () {
                _openBottomModalSheet(context);
              },
              child: Icon(
                Icons.menu,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeVer(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: darkGreyColor,
                        radius: 40,
                      ),
                      sizeVer(10),
                      const Text(
                        "Username",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            "2",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          sizeVer(5),
                          const Text(
                            "Posts",
                            style: TextStyle(color: primaryColor, fontSize: 15),
                          ),
                        ],
                      ),
                      sizeHor(20),
                      Column(
                        children: [
                          const Text(
                            "0",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          sizeVer(5),
                          const Text(
                            "Followers",
                            style: TextStyle(color: primaryColor, fontSize: 15),
                          ),
                        ],
                      ),
                      sizeHor(20),
                      Column(
                        children: [
                          const Text(
                            "0",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          sizeVer(5),
                          const Text(
                            "Following",
                            style: TextStyle(color: primaryColor, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              sizeVer(10),
              const Text(
                "Bio of the user here",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizeVer(10),
              GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 100,
                      color: secondaryColor,
                    );
                  }),
              // ----------- OUTER COLUMN ----------------
            ],
          ),
        ),
      ),
    );
  }

  _openBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 150,
              decoration: BoxDecoration(color: backGroundColor.withOpacity(.8)),
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "More Options",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Divider(
                          thickness: 1,
                          color: secondaryColor,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/editProfilePage");
                            },
                            child: const Text(
                              "Edit Profile",
                              style:
                                  TextStyle(fontSize: 16, color: primaryColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Divider(
                          thickness: 1,
                          color: secondaryColor,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Logout",
                            style: TextStyle(fontSize: 16, color: primaryColor),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ]),
                ),
              ));
        });
  }
}
