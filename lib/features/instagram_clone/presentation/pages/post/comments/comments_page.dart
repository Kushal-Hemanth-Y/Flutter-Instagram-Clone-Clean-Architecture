import 'package:flutter/material.dart';
import 'package:flutter_bloc_cleanarch/config/consts.dart';
import 'package:flutter_bloc_cleanarch/features/instagram_clone/presentation/widgets/form_container_widgets.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  bool _isUserReplying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text(
          "Comments",
          style: TextStyle(color: primaryColor),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: secondaryColor,
                ),
                sizeHor(10),
                const Text(
                  "Username",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: primaryColor),
                ),
              ],
            ),
            sizeVer(10),
            const Text(
              "Picture Description",
              style: TextStyle(color: primaryColor),
            ),
            sizeVer(10),
            Divider(
              thickness: 1,
              color: primaryColor.withOpacity(.3),
            ),
            sizeVer(10),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: darkGreyColor,
                  ),
                  sizeHor(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Username",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: primaryColor,
                            ),
                          ],
                        ),
                        sizeVer(2),
                        const Text(
                          "comment content",
                          style: TextStyle(color: primaryColor, fontSize: 15),
                        ),
                        sizeVer(5),
                        Row(
                          children: [
                            const Text(
                              "22-08-2023",
                              style:
                                  TextStyle(color: darkGreyColor, fontSize: 12),
                            ),
                            sizeHor(10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isUserReplying = !_isUserReplying;
                                });
                              },
                              child: const Text(
                                "Reply",
                                style: TextStyle(
                                    color: darkGreyColor, fontSize: 12),
                              ),
                            ),
                            sizeHor(10),
                            const Text(
                              "View Replies",
                              style:
                                  TextStyle(color: darkGreyColor, fontSize: 12),
                            ),
                          ],
                        ),
                        _isUserReplying == true ? sizeVer(10) : sizeVer(0),
                        _isUserReplying == true
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  FormContainerWidget(
                                    hintText: "Post your reply...",
                                  ),
                                  sizeVer(10),
                                  Text(
                                    "Post",
                                    style: TextStyle(color: blueColor),
                                  )
                                ],
                              )
                            : Container(
                                width: 0,
                                height: 0,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _commentSection(),
            // -------- OUTER COLUMN ------------
          ],
        ),
      ),
    );
  }

  _commentSection() {
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.grey.shade800,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: secondaryColor,
          ),
          sizeHor(10),
          Expanded(
              child: TextFormField(
            style: const TextStyle(color: primaryColor),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Post your comment...",
              hintStyle: TextStyle(color: primaryColor),
            ),
          )),
          const Text(
            "Post",
            style: TextStyle(fontSize: 15, color: blueColor),
          ),
        ]),
      ),
    );
  }
}
