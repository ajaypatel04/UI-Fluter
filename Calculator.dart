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
  var a=10;
  var b=10;
  var output='0';
  TextEditingController text1= TextEditingController();
  TextEditingController text2= TextEditingController();
  void setResult(var res){
    setState(() {
      output=res;
    });
  }
  void add(){
    a=int.parse(text1.text);
    b=int.parse(text2.text);
    setResult('${a+b}');
    print(output);
  }
  void sub(){
    a=int.parse(text1.text);
    b=int.parse(text2.text);
    setResult('${a-b}');
    print(output);
  }
  void mul(){
    a=int.parse(text1.text);
    b=int.parse(text2.text);
    setResult('${a*b}');
    print(output);
  }
  void div(){
    a=int.parse(text1.text);
    b=int.parse(text2.text);
    setResult('${a/b}');
    print(output);
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 600,
          decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                width: 3,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(output,
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 50.0,bottom: 20.0),
                      width: 300,
                      child: TextField(
                        controller: text1,
                        decoration: InputDecoration(labelText: 'Enter Number 1'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 50.0,bottom: 20.0),
                      width: 300,
                      child: TextField(
                        controller: text2,
                        decoration: InputDecoration(

                            labelText: 'Enter Number 2'),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 50.0,bottom: 20.0),
                      child :Row(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [

                                Container(
                                  child: ElevatedButton(onPressed:add, child: Text("Add",
                                    style: TextStyle(fontSize: 20),
                                  )),
                                ),
                            Container(
                              child: ElevatedButton(onPressed:sub, child: Text("Sub",
                                style: TextStyle(fontSize: 20),
                              )),
                            ),
                            Container(
                              child: ElevatedButton(onPressed:mul, child: Text("Mul",
                                style: TextStyle(fontSize: 20),
                              )),
                            ),
                            Container(
                              child: ElevatedButton(onPressed:div, child: Text("Div",
                                style: TextStyle(fontSize: 20),
                              )),
                            ),

                          ],
                      )
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
