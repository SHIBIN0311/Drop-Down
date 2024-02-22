import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
List<String> items= ['item 1','item 2','item 3','item 4','item 5',];
String? selectedItem = 'item 1';
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedItem,
          items: items.map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(item,style: const TextStyle(fontSize: 24),)
          )
          ).toList(),
          onChanged: (item) => setState(()=> selectedItem = item),
        ),
      ),
    );
  }
}