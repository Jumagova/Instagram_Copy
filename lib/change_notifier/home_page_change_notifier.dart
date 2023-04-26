import 'package:fakestagram/data/repository.dart';
import 'package:fakestagram/utils/status.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';

class HomePageChangeNotifier extends ChangeNotifier {
  final Repository _repository;

  HomePageChangeNotifier(this._repository) {
    getPosts();
  }

  Status status = Status.loaded;
  List<Post> posts = [];

  Future<void> getPosts() async {
    status = Status.loading;
    notifyListeners();

    try {
      posts = await _repository.getPosts();
    } catch (exception) {
      print('ERROR: $exception');
    }
    status = Status.success;
    notifyListeners();
  }
}
