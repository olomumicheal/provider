import 'package:flutter/material.dart';
import 'package:newproject/list_provider.dart';
import 'package:newproject/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
      },
      child: const Icon(Icons.add),),
      appBar: AppBar(
      ),
      body: Consumer<NumbersListProvider>(
        builder: ,
        child: SizedBox(
          child: Column(
            children: [
               Text(numbers.last.toString(), style: TextStyle(
                      fontSize: 30,
                    ),),
              Expanded(
                child: ListView.builder(itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Text(numbers[index].toString(), style: TextStyle(
                      fontSize: 30,
                    ),);
                  }),
              ),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Second(numbers: numbers)));
              }, 
              child: Text('Second'))
            ],
          ),
        ),
      ),
    );
  }
}