import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("imagens/youtube.png",
        width: 98),
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),
          label: 'teste'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'teste'),
          BottomNavigationBarItem(icon: Icon(Icons.http),label: 'teste'),
        ],
      ),
    );
  }
}
