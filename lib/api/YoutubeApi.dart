import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String YOUTUBE_API_KEY = 'AIzaSyD2miN_slHo8gD4gcvMNRTvX_uNf0wUK74';
const String ID_CANAL = 'UCv-Nx8pSfG_LxbViMz14RWQ';
const String URL_BASE = 'https://www.googleapis.com/';

class YoutubeApi {

  pesquisar(String urlBusca) async {

    http.Response response = await http.get(
        Uri.parse(URL_BASE + "youtube/v3/search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$YOUTUBE_API_KEY"
            "&channelId=$ID_CANAL"
            "&q=$urlBusca"
        )
    );


    if (response.statusCode == 200) {

      Map<String,dynamic> dadosJson = json.decode(response.body);
      print(dadosJson['pageInfo']['totalResults'].toString());

      //print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}