import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: size.width,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Ubah profile'),
                icon: const Icon(Icons.edit),
                style:
                    ElevatedButton.styleFrom(padding: const EdgeInsets.all(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
