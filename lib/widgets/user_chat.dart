import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui_gdsc/models/user.dart';
import 'package:whatsapp_ui_gdsc/providers/img_provider.dart';

class UserChat extends StatelessWidget {
  final User user;

  const UserChat({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    final imgProvider = context.watch<ImgProvider>();
    return Container(
      // decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[500],
                ),
                child: imgProvider.imageFile == null
                    ? const Icon(
                        Icons.person,
                        size: 35,
                      )
                    : ClipOval(
                        child: Image.file(
                          imgProvider.imageFile!,
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 230, 230, 230),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          user.msg,
                          style: const TextStyle(color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          user.time,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 190, 100),
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CircleAvatar(
                          maxRadius: 9,
                          backgroundColor: Color.fromARGB(255, 36, 190, 100),
                          child: Text(
                            "17",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 35,
          ),
        ],
      ),
    );
  }
}
