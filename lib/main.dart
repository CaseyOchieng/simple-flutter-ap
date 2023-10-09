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
      title: 'Twoy Chat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // This makes the visual density adapt to the platform that you run
      ),
      home: const MyHomePage(title: 'TWOY CHAT'),
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
  bool value = false;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text(widget.title)),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://picsum.photos/200/300'),
            // Am going to place the input place here.
            const SizedBox(
              height: 20,
            ),
// Here is the input place
            const Padding(
              padding: EdgeInsets.all(21.0),
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              )),
//Here the Notification button place it here
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Notification'),
              const SizedBox(width: 10),
              Switch(
                  value: value,
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue;
                    });
                  }),
            ]),
            ElevatedButton(child: const Text("Save"), onPressed: () {}),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
