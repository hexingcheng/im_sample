class Talent {
  Talent({
    required this.uuid,
    required this.introduction,
    required this.displayName,
    required this.annotationID,
    required this.mainSquareImageUrl,
    required this.mainRectangleImageUrl,
    required this.imageUrls,
    required this.twitterUrl,
    required this.instagramUrl,
    required this.tiktokUrl,
    required this.youtubeUrl,
    required this.customLinkName,
    required this.customLinkUrl,
    required this.genre,
  });

  String uuid;
  String introduction;
  String displayName;
  String annotationID;
  String mainSquareImageUrl;
  String mainRectangleImageUrl;
  List<String> imageUrls;
  String twitterUrl;
  String instagramUrl;
  String tiktokUrl;
  String youtubeUrl;
  String customLinkName;
  String customLinkUrl;
  List<Genre> genre;
}

enum Genre {
  nonGenre, // 不明
  model, // モデル
  actor, // 俳優
  actress, // 女優
  youtuber, // youtuber
  liver, // liver
  instagrammer, // instagrammer
  tiktoker, // tiktoker
  idol, // idol
  cosplayer, // コスプレイヤー
  voiceActor, // 声優
  talent, // タレント
  artist, // アーティスト
  comedian, // お笑い芸人
  fortuneTeller, // 占い師
  other, // その他
  influencer, // インフルエンサー
}

extension GenreExtenstion on Genre {
  String string() {
    switch (this) {
      case Genre.nonGenre:
        return "";
      case Genre.model:
        return "モデル";
      case Genre.actor:
        return "俳優";
      case Genre.actress:
        return "女優";
      case Genre.youtuber:
        return "youtuber";
      case Genre.liver:
        return "ライバー";
      case Genre.instagrammer:
        return "インスタグラマー";
      case Genre.tiktoker:
        return "TikToker";
      case Genre.idol:
        return "アイドル";
      case Genre.cosplayer:
        return "コスプレイヤー";
      case Genre.voiceActor:
        return "声優";
      case Genre.talent:
        return "タレント";
      case Genre.artist:
        return "アーティスト";
      case Genre.comedian:
        return "お笑い芸人";
      case Genre.fortuneTeller:
        return "占い師";
      case Genre.other:
        return "その他";
      case Genre.influencer:
        return "インフルエンサー";
    }
  }

  toList() {
    Genre.values.map((value) => value.toString().split('.')[1]).toList();
  }
}
