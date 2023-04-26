import 'package:flutter/material.dart';

import '../utils/assets.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
          backgroundColor: const Color(0XFF212121),
          title: Image.asset(Assets.icTitle),
          centerTitle: false,
        );
}
