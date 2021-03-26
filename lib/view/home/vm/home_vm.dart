import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/talent.dart';

class HomeVM with ChangeNotifier {
  final List<Talent> now = [];

  final List<Talent> comingSoon = [];

  final List<Talent> hot = [];
  void fetchTalentData() {
    return;
  }
}
