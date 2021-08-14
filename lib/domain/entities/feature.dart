class Feature {
  Feature({
    required this.title,
    required this.imageUrl,
    required this.webViewUrl,
  });

  String title; //特集のタイトル
  String imageUrl; //特集の image_uri
  String webViewUrl; //特集ページの webview_uri
}
