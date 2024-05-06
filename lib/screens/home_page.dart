import 'package:flutter/material.dart';
import 'package:whatsapp_ui_gdsc/widgets/bottom_nav_bar_item.dart';
import 'package:whatsapp_ui_gdsc/widgets/appbar.dart';
import 'package:whatsapp_ui_gdsc/widgets/user_chat.dart';
import '../models/user.dart';

/*
This HomePage has a working camera button that takes a picture
  and make it profile picture for all contacts for now
*/
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<User> users = [
    User(name: "Loay Ahmed (You)", time: "5:00 PM", msg: "Assignment 2.pdf"),
    User(name: "Ahmed Hegazy", time: "Yesterday", msg: "Send the code please"),
    User(
        name: "Omar Mahmoud",
        time: "11:00 PM",
        msg: "Help me with android studio"),
    User(name: "Ibrahim", time: "20/4/2004", msg: "count sort algorithm"),
    User(name: "Loay Ahmed (You)", time: "5:00 PM", msg: "Assignment 2.pdf"),
    User(name: "Ahmed Hegazy", time: "Yesterday", msg: "Send the code please"),
    User(
        name: "Omar Mahmoud",
        time: "11:00 PM",
        msg: "Help me with android studio"),
    User(name: "Ibrahim", time: "20/4/2004", msg: "count sort algorithm"),
    User(name: "Loay Ahmed (You)", time: "5:00 PM", msg: "Assignment 2.pdf"),
    User(name: "Ahmed Hegazy", time: "Yesterday", msg: "Send the code please"),
    User(
        name: "Omar Mahmoud",
        time: "11:00 PM",
        msg: "Help me with android studio"),
    User(name: "Ibrahim", time: "20/4/2004", msg: "count sort algorithm"),
    User(name: "Loay Ahmed (You)", time: "5:00 PM", msg: "Assignment 2.pdf"),
    User(name: "Ahmed Hegazy", time: "Yesterday", msg: "Send the code please"),
    User(
        name: "Omar Mahmoud",
        time: "11:00 PM",
        msg: "Help me with android studio"),
    User(name: "Ibrahim", time: "20/4/2004", msg: "count sort algorithm"),
  ];

  @override
  Widget build(BuildContext context) {
    /*
    This HomePage has a working camera button that takes a picture
      and make it profile picture for all contacts for now
    */
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 20, 27),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: [
              /*
              This CustomAppBar has a working camera button that takes a picture
                and make it profile picture for all contacts for now
              */
              const CustomAppBar(),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 15,
                          bottom: 20,
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Icon(
                              Icons.archive_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Archived",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 190, 100),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    } else {
                      return UserChat(user: users[index - 1]);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(
          top: 12.0,
          bottom: 7,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBarItem(
              name: "Chats",
              icon: Icons.chat_rounded,
              color: Color.fromARGB(175, 0, 60, 0),
            ),
            BottomNavBarItem(
              name: "Updates",
              icon: Icons.maps_ugc_rounded,
            ),
            BottomNavBarItem(
              name: "Communities",
              icon: Icons.groups_outlined,
            ),
            BottomNavBarItem(
              name: "Calls",
              icon: Icons.call_outlined,
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 57,
        height: 57,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 25, 183, 95),
          child: const Icon(
            Icons.chat_bubble,
            color: Color.fromARGB(255, 11, 20, 27),
            size: 20,
          ),
        ),
      ),
    );
  }
}
