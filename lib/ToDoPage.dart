import 'package:flutter/material.dart';
import 'package:to_do_app/Style.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List todoList = [];

  String item = "";
  handleInputOnchange(value) {
    item = value;
  }

  /// handle add item button
  handleAddItemButton() {
    todoList.add({'item': item});
    setState(() {});
  }

  /// Handle remove items
  handleRemoveItem(index){
    todoList.removeAt(index);
    setState(() {    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                      flex: 70,
                      child: TextFormField(
                        decoration: appInputDecoration('List Item'),
                        // handle input onchange
                        onChanged: (content) {
                          handleInputOnchange(content);
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Expanded(
                        flex: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            handleAddItemButton();
                          },
                          style: appButtonStyle(),
                          child: const Text('Add'),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: todoList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: sizedBox50(Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Text(todoList[index]['item'].toString())),
                          Expanded(
                              flex: 20,
                              child: TextButton(
                                  onPressed: () {
                                    handleRemoveItem(index);
                                  },
                                  child: const Icon(Icons.delete))),
                        ],
                      )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
