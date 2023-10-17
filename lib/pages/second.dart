import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_listview_app/model/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Second'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: const Icon(Icons.add),
        ),
        body: SizedBox(
          child: Column(children: [
            Text(value.numbers.last.toString()),
            Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.numbers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(value.numbers[index].toString());
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
