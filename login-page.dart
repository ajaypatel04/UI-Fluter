import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless and statefull demo',
      home: const MyHomePage(title: 'login demo')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
      child: Container(
        height: 500,
        width: 450,
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            width: 3,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: GridView.count(
          crossAxisCount: 1,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text('Login',
                          style: TextStyle(fontSize: 50),
                      ),
                    ),
                    Container(
                      height: 60,
                        width: 300,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Enter User name'),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(

                            labelText: 'Enter the password'),
                      ),
                    ),
                    Container(
                        child: ElevatedButton(onPressed:()=>{}, child: Text("Submit",
                            style: TextStyle(fontSize: 20),
                        ))
                    )
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),

    );
  }
}
