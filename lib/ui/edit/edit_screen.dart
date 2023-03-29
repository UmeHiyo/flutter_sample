import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/models/todo.dart';
import 'package:sqflite/sqflite.dart';

import 'edit_screen_model.dart';

final priorities = ['　高　', '　中　', '　低　'];

class EditScreen extends ConsumerWidget {
  // データがNullだったらTitle「追加」
  // 文字が入力されないときは保存しない
  EditScreen(this.todo, {super.key});
  Todo? todo;
  String title = 'Todo編集';
  String text = '';
  int priority = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final path = getDatabasesPath();
    var state = ref.watch(editScreenModelProvider);
    final notifier = ref.read(editScreenModelProvider.notifier);
    if (todo == null) {
      title = 'Todo新規追加';
    } else {
      // 初期値の設定
      state = state.copyWith(
          id: todo!.id,
          text: todo!.text,
          priority: todo!.priority,
          createdAt: todo!.createdAt);
      text = todo!.text!;
      priority = todo!.priority;
    }
    return WillPopScope(
      onWillPop: () async {
        if (text.isNotEmpty) {
          if (todo == null) {
            final createTime = DateTime.now().toString();
            final updateTime = createTime;
            state = state.copyWith(
                text: text,
                priority: priority,
                createdAt: createTime,
                updatedAt: updateTime);
          } else {
            final updateTime = DateTime.now().toString();
            state = state.copyWith(
                id: todo!.id,
                text: text,
                priority: priority,
                createdAt: todo!.createdAt,
                updatedAt: updateTime);
          }
          notifier.save(state);
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(children: <Widget>[
            const Text(
              '',
            ),
            const Text(
              '優先度',
            ),
            CupertinoSlidingSegmentedControl(
                groupValue: priority,
                children: {
                  0: Text(priorities[0]),
                  1: Text(priorities[1]),
                  2: Text(priorities[2])
                },
                onValueChanged: (i) {
                  priority = i!;
                }),
            SizedBox(
                //もしくはContainer
                width: 300,
                child: TextField(
                    controller: TextEditingController(text: state.text),
                    onChanged: (text) {
                      this.text = text;
                    })),
          ]),
        ),
      ),
    );
  }
}
