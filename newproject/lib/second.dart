import 'dart:math';

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  final List<int> numbers;
  const Second({super.key, required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        int last = widget.numbers.last;
        setState(() {
          widget.numbers.add(last + 1);
        });
      },
      child: const Icon(Icons.add),),
      appBar: AppBar(
      ),
      body: SizedBox(
        child: Column(
          children: [
             Text(widget.numbers.last.toString(), style: TextStyle(
                    fontSize: 30,
                  ),),
            Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.numbers.length,
                itemBuilder: (context, index) {
                  return Text(widget.numbers[index].toString(), style: TextStyle(
                    fontSize: 30,
                  ),);
                }),
            )
          ],
        ),
      ),
    );
  }
}