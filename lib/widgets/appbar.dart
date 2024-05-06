import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui_gdsc/providers/img_provider.dart';

/*
This CustomAppBar has a working camera button that takes a picture
  and make it profile picture for all contacts for now
*/
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  IconData icon = Icons.camera_alt_outlined;

  void changeIcon() {
    setState(() {
      icon = icon == Icons.camera_alt_outlined
          ? Icons.camera_alt_rounded
          : Icons.camera_alt_outlined;
    });
  }

  @override
  Widget build(BuildContext context) {
    final imageProvider = context.watch<ImgProvider>();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 40, left: 10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 11, 20, 27),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onLongPressUp: changeIcon,
                    onTap: changeIcon,
                    onTapCancel: changeIcon,
                    onLongPressCancel: changeIcon,
                    /*
                    This camera IconButton is working and takes a picture
                      and make it profile picture for all contacts for now
                    */
                    child: IconButton(
                      splashRadius: 2,
                      splashColor: Colors.transparent,
                      onPressed: () => imageProvider.pickImage(),
                      icon: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width - 20,
              child: Divider(
                height: 1,
                thickness: 0.3,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
