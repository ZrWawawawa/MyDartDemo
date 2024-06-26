import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple),
        useMaterial3:true,
      ),
      home: const MyHomePage(title:'web of ZiRui'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key,required this.title});
  final String title;
  State<MyHomePage> createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  
  int _counter = 0;

  void _incrementCounter() {
  setState((){
    _counter++;
  });
}

Widget build(BuildContext contest){
  return Scaffold(appBar:AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  title:Text(widget.title),),
  body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[const Text('You have pushed button this many times:',),
  Text('$_counter',
  style:Theme.of(context).textTheme.headlineMedium,),
  const SizedBox(height:20),
  ElevatedButton(onPressed: (){}, child: const Text('字蕊'),),
  const SizedBox(height:10),
  ElevatedButton(onPressed:(){}, child: const Text('2021112083'),),
  ],),),
  floatingActionButton: FloatingActionButton(
    onPressed:_incrementCounter,
    tooltip:'Increment',
    child:const Icon(Icons.add),
  ),
  );
}
}