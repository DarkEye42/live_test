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
      debugShowCheckedModeBanner: false,
      title: 'Ostad Live Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(title),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/img.jpg'),
              ),
              SizedBox(height: 20,),
              Text('Md. Nazmul Islam',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black
              ),
              ),
              SizedBox(height: 5,),
              Text('nir71.ni@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s '
                    'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a'
                    'type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, '
                    'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing '
                    'Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions '
                    'of Lorem Ipsum.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
