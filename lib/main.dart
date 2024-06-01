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
      body:  Container(
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 20.0, vertical: 20.0),
        alignment: Alignment.center,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person_2, size: 50.0, color: Colors.grey[800],),
            ),
            SizedBox(height: 40.0,),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
              ),
          ],
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