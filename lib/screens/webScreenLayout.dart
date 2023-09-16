import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contactList.dart';
import 'package:whatsapp_clone/widgets/webProfileBar.dart';
import 'package:whatsapp_clone/widgets/webSearchBar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/backgroundImage.png"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
