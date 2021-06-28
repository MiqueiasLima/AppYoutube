import 'package:flutter/material.dart';
import 'package:youtube/api/YoutubeApi.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {




  @override
  Widget build(BuildContext context) {

  YoutubeApi api = YoutubeApi();
  api.pesquisar("");

    return Container(
      child: Center(
        child: Text("Inicio",style: TextStyle(
            fontSize: 25
        ),),
      ),
    );
  }
}
