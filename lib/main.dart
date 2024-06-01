import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Counter',
      debugShowCheckedModeBanner: false,
      home:  Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home>{

  var _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Counter', style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold,),),
      ),
      body:  Center(
        child: Text(
          '$_counter',
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(
          Icons.add
        ),
      ),
    );
  }
}