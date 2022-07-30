import 'package:flutter/material.dart';

class ContactChat extends StatelessWidget {
  final String name;
  final String chat;
  final String time;
  final int count;
  final Function() onTap;
  const ContactChat(
      {Key? key,
      required this.name,
      required this.chat,
      required this.time,
      required this.count,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
          leading: CircleAvatar(
            child: Text(
              name[0],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(chat),
          trailing: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.vertical,
              children: [
                Text(time),
                CircleAvatar(
                    radius: 10,
                    child: Text(
                      '$count',
                      style: const TextStyle(fontSize: 12),
                    ))
              ])),
    );
  }
}
