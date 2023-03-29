import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/models/todo.dart';
import 'package:flutter_sample/ui/edit/edit_screen.dart';
import 'package:flutter_sample/ui/list/list_style_const.dart';
import 'package:grouped_list/grouped_list.dart';

import 'list_screen_model.dart';

final style = GroupedListStyle();
final priorities = ['1. 優先度　高', '2. 優先度　中', '3. 優先度　低'];
var elements = [];

class ListScreen extends ConsumerWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listScreenModelProvider);
    todosToElements(state.todos);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODOリスト'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return EditScreen(null);
                          },
                          fullscreenDialog: true))
                  .then((value) => //ref.refresh(listScreenModelProvider),
                      todosToElements(state.todos));
            },
          ),
        ],
      ),
      body: GroupedListView<dynamic, String>(
        elements: elements,
        groupBy: (element) => priorities[element['priority']],
        groupComparator: (value1, value2) => value1.compareTo(value2),
        itemComparator: (item1, item2) =>
            item1['text'].compareTo(item2['text']),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: style.separatorPadding,
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: style.separatorTextStyle,
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: style.cardMargin,
            child: ListTile(
                title: Text(element['text']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditScreen(Todo.fromJson(element))),
                  ).then((value) => todosToElements(state.todos));
                },
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('削除します'),
                          content: Text(element['text']),
                          actions: [
                            TextButton(
                              child: const Text("Cancel"),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  /// 削除してリロード
                                  final notifier = ref
                                      .read(listScreenModelProvider.notifier);
                                  notifier.delete(Todo.fromJson(element));
                                  todosToElements(state.todos);
                                  Navigator.pop(context);
                                }),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
                contentPadding: style.cardPadding),
          );
        },
      ),
    );
  }

  todosToElements(List<Todo> todos) {
    elements = [];
    for (Todo todo in todos) {
      elements.add(todo.toJson());
    }
  }
}
