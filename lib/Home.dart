import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indice = 0;

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
        type: BottomNavigationBarType.fixed,
        currentIndex: _indice,

        onTap: (index){
          this.setState(() {
            _indice = index;
          });
        },
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: 'Home',
             // backgroundColor: Colors.orange
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: 'Em alta',
              //backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: 'Inscrições',
             // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Biblioteca',
              //backgroundColor: Colors.amber
          ),

        ],
      ),
    );
  }
}
