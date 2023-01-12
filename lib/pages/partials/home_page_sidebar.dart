import 'package:flutter/material.dart';

class HomePageSidebar extends StatelessWidget {
  final void Function() addNote;

  HomePageSidebar({required this.addNote});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(16),
      color: Colors.grey.shade200,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D4D03AQEkxNAgrjorLA/profile-displayphoto-shrink_800_800/0/1671098207890?e=1676505600&v=beta&t=Wugrv7S2R6kkNI7M2eMrcb1JxogvVgddarLMPOdT9Ts'),
            ),
            IconButton(
                onPressed: addNote,
                icon: const Icon(
                  Icons.add,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
