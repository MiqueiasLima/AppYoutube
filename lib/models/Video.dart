class Video{

  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Video({this.id,this.titulo,this.imagem,this.canal,this.descricao});

  /*
  static converter(Map<String,dynamic> jsonVideo){
    return Video(
      id: jsonVideo['id']['videoId'],
      titulo: jsonVideo['snippet']['title'],
      imagem: jsonVideo['snippet']['thumbmails']['high']['url'],
      canal: jsonVideo['snippet']['channelId'],
    );
  }
   */

  factory Video.fromJason(Map<String,dynamic> jsonCode){
    return Video(
      id: jsonCode['id']['videoId'],
      titulo: jsonCode['snippet']['title'],
      imagem: jsonCode['snippet']['thumbnails']['high']['url'],
      canal: jsonCode['snippet']['channelId'],
    );
  }

}