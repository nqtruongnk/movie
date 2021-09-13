import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:research_rvp/example/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer(builder: (context, watch, child) {
                final listName = watch(userProvider);
                return Container(
                  height: 100,
                  child: ListView.builder(
                      itemCount: listName.length,
                      itemBuilder: (context, index) {
                        print(listName.length);
                        return Text(listName[index]);
                      }),
                );
              }),
              SizedBox(
                height: 100,
              ),
              Consumer(builder: (context, watch, child) {
                // final count = watch(counterProvider)
                return Text('Basic ' + watch(counterControler).toString());
              }),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: userName,
                decoration: InputDecoration(hintText: 'Input name'),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(userName.text);
                    context.read(userProvider.notifier).addName(userName.text);
                  },
                  child: Text('add name')),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read(counterControler.notifier).add();
                  },
                  child: Text('add')),
              ElevatedButton(
                  onPressed: () {
                    context.read(counterControler.notifier).subtract();
                  },
                  child: Text('Subtract')),
            ],
          ),
        ),
      ),
    );
  }
}
