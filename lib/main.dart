import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'sconde page.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String x = 'You have pushed the button this many times:';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  TextEditingController inputcont =  TextEditingController();
  void _toast(String text){
    Toast.show(text, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }
  void _reset(){
    setState(() {
      _counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text(
               x,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          TextField(
            keyboardType: TextInputType.number,
            controller: inputcont,
            decoration: InputDecoration(
              labelText: "input",
              hintText: "mosab",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.5)
              ),
            ),
          ),
            RaisedButton(
              child: Text("make count"),
              onPressed: (){
                _reset();
                try{
                _counter = int.parse(inputcont.text) ;}
                catch (NumberFormatException){
                  _counter = 0;
                }
                _toast("counter was cleared and make it   "+inputcont.text);
                x= "you pressed";
                Navigator.push(context, MaterialPageRoute(builder: (context) => Seconde()),);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _incrementCounter();
          _toast("counter new"+_counter.toString());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}