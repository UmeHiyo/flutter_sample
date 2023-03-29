import 'package:flutter/material.dart';

class GroupedListStyle {
  get separatorPadding => const EdgeInsets.all(8.0);

  get separatorTextStyle =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  get cardMargin => const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0);

  get cardPadding =>
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);
}
