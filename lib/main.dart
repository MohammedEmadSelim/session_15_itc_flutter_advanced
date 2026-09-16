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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const EphemeralState(title: 'ephemeral state'),
    );
  }
}

/// imperative UI -==> as Native Swift do
/// Declarative UI ==> as Flutter DO

    // How Flutter Handles State
    // │
    // ├── Ephemeral State
    // │   └── State that belongs to a single widget
    // │
    // └── Provider - BLoC - GetX - RiverBod
    // └── State that can be shared between multiple widgets

//immutable  => غير قابل للتغير
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TextButton(onPressed: () {}, child: Text("press here"))],
      ),
    );
  }
}

///       ephemeral state ===> حالة سريعة الزوال
//immutable  => غير قابل للتغير
class EphemeralState extends StatefulWidget {
  const EphemeralState({super.key, required this.title});

  final String title;

  @override
  State<EphemeralState> createState() => _EphemeralStateState();
}

class _EphemeralStateState extends State<EphemeralState> {
  List<String> names = ["Ahmed Hany", "Mena Adel"];
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 24,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 31),
                itemCount: names.length,
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        "● ${names[index]}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showDialog(
          //   context: context,
          //   builder: (context) => AlertDialog(
          //     title: Text("Enter New Name"),
          //     content: TextFormField(controller: name),
          //     actions: [
          //       ElevatedButton(
          //         onPressed: () {
          //           Navigator.pop(context, name.text);
          //         },
          //         child: Text("add"),
          //       ),
          //     ],
          //   ),
          // ).then((value) {
          //   names.add(value);
          //   setState(() {});
          // });

          setState(() {
            names.add("Sama Yahia");

          });
        },
        child: Text(
          "+",
          style: TextStyle(color: Colors.indigo.shade400, fontSize: 29),
        ),
      ),
    );
  }
}
