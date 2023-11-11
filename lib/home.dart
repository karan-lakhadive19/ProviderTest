// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/pro.dart';
import 'package:test/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<int> nums = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder:(context, numbersProviderModel, child)=> Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: Icon(Icons.add),
        ),
        body: SizedBox(
                child: Column(
                  children: [
                    Text(
                      numbersProviderModel.numbers.last.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numbersProviderModel.numbers.length,
                        itemBuilder: (context, index) {
                          return Text(numbersProviderModel.numbers[index].toString(),
                              style: TextStyle(fontSize: 30));
                        },
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Second(),
                              ));
                        },
                        child: Text('Second Page'))
                  ],
                ),
              )),
    
      
    );
  }
}
