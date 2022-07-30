import 'package:flutter/material.dart';

import '../../component/contact_chat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Chatting'),
          // leading: IconButton(
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //     icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.person)),
          ],
        ),
        body: ContactChat(
          name: 'Ali',
          chat: 'testing',
          time: '18.30',
          count: 13,
          onTap: () {},
        ),
        floatingActionButton:
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)));
  }
}
