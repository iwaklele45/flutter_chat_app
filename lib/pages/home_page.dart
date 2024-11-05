import 'package:flutter/material.dart';
import 'package:flutter_chat_app/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Firebase Chat App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                child: Text('${index + 1}'),
              ),
              title: Text('Chat ${index + 1}'),
              subtitle: const Text('Last message'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChatPage();
                    },
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 10),
    );
  }
}
