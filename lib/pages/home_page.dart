import 'package:noted/widgetgs/drawer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Hi,Paras'),
      ),
      drawer: DrawerPage(),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        
            
        ],
      ),
    );
  }
}
