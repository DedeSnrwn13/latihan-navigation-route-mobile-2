import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String nama = "Dede Sunarwan";
    TextEditingController textFieldController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Halaman 1")),
        body: Builder(
            builder: (context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: textFieldController,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: "Isi Disini"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondRoute(
                                          textFromController: nama,
                                          textFromTextField:
                                              textFieldController.text,
                                        )));
                          },
                          child: const Text("Pergi ke Halaman 2"))
                    ],
                  ),
                )),
      ),
    );
  }
}
