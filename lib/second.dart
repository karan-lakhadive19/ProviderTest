import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/pro.dart';

class Second extends StatefulWidget {
  // final List<int> nums;
  Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder:((context, numberProviderModel, child)=> Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberProviderModel.add();
          },
          child: Icon(Icons.add),
        ),
        body: SizedBox(
            child: Column(
              children: [
                Text(
                  numberProviderModel.numbers.last.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:  numberProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text( numberProviderModel.numbers[index].toString(),
                          style: TextStyle(fontSize: 30));
                    },
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
