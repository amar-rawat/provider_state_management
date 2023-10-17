import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_listview_app/model/provider.dart';
import 'package:provider_listview_app/pages/second.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
        builder: (BuildContext context, value, child) => Scaffold(
              appBar: AppBar(
                title: const Text('First Screen'),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  value.add();
                },
                child: const Icon(Icons.add),
              ),
              body: Column(children: [
                Text(value.numbers.last.toString()),
                Expanded(
                  child: ListView.builder(
                      itemCount: value.numbers.length,
                      itemBuilder: (context, index) => ListTile(
                            title: Text(value.numbers[index].toString()),
                          )),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Second()));
                  },
                  child: const Text('Second'),
                ),
              ]),
            ));
  }
}
