import 'package:flutter/material.dart';
import 'package:flutter_bloc_cleanarch/config/consts.dart';
import 'package:flutter_bloc_cleanarch/features/instagram_clone/presentation/pages/profile/widgets/profile_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text("Edit Profile"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.done,
              color: blueColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeVer(20),
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundColor: darkGreyColor,
                    ),
                    sizeVer(10),
                    const Text(
                      "Change profile photo",
                      style: TextStyle(color: blueColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Name",
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Username",
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Website",
              ),
              sizeVer(15),
              const ProfileFormWidget(
                title: "Bio",
              ),
              // ------------ OUTER COLUMN ------------
            ],
          ),
        ),
      ),
    );
  }
}
