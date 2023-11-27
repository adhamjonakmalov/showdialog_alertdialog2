import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Shodialog(),
    );
  }
}

class Shodialog extends StatelessWidget {
  const Shodialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dialogwitget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    decoration: const BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(offset: Offset(0, 5), blurRadius: 5, color: Colors.black)]),
                    child: AlertDialog(
                      title: const Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Text(
                          'Permission required',
                          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 13, 13, 13)),
                        ),
                      ),
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 380),
                        child: Icon(
                          Icons.error_outline,
                          size: 30,
                        ),
                      ),
                      content: const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'You have not the permission to read or modify this file',
                          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 25, 25, 25)),
                        ),
                      ),
                      actions: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 30, bottom: 10),
                          child: Text(
                            'Keep in mind that people are able toviwe this data',
                            style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 104, 103, 103)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(fontSize: 25, color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Got it',
                                  style: TextStyle(fontSize: 25, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                });
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}
