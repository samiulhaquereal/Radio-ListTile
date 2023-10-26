import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> options = ['Option 1' , 'Option 2'];

class _MyHomePageState extends State<MyHomePage> {

  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            RadioListTile(
                title: Text('Option 1'),
                value: options[0],
                groupValue: currentOption,
                onChanged: (value){
                  setState(() {
                    currentOption = value.toString();
                  });
            }),
            RadioListTile(
                title: Text('Option 2'),
                value: options[1],
                groupValue: currentOption,
                onChanged: (value){
                  setState(() {
                    currentOption = value.toString();
                  });
                }),
          ],
        ),
      ),
    );
  }
}

