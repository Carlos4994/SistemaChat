// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:clon_whastapp/screens/chat_list_widget.dart';
import 'package:clon_whastapp/screens/placeholder_widget.dart';
import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Estados'),
              ),
              Tab(
                child: Text('Llamadas'),
              ),
            ],
            labelColor: Colors.white,
            // unselectedLabelColor: Colors.grey,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.message),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            PlaceHolderWidget(),
            ChatListWidget(),
            PlaceHolderWidget(),
            PlaceHolderWidget(),
          ],
        ));
  }
}
