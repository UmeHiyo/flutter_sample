import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calico2'),
        ),
        body: const Center(
          child: Text('次の画面来たで')
        )

    );
  }
}