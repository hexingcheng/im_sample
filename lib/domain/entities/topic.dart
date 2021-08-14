enum Topic {
  nonTopic, // 不明
  popular, // 急上昇
}

extension ExtensionTopic on Topic {
  String string() {
    switch (this) {
      case Topic.nonTopic:
        return "";
      case Topic.popular:
        return "popular";
    }
  }
}
