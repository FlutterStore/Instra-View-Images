import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List img = [
    "assets/images/10.png",
    "assets/images/11.png",
    "assets/images/12.png",
    "assets/images/dog0.jpg",
    "assets/images/13.png",
    "assets/images/14.png",
    "assets/images/15.png",
    "assets/images/small-image.jpg",
    "assets/images/16.png",
    "assets/images/17.png",
    "assets/images/18.png",
    "assets/images/19.png",
    "assets/images/hathi.png",
    "assets/images/20.png",
    "assets/images/21.png",
    "assets/images/hotel.png",
    "assets/images/22.png",
    "assets/images/23.png",
    "assets/images/24.png",
    "assets/images/neat.gif",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InstaImageViewer",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                itemCount: img.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ), 
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: InstaImageViewer(
                        child: Image.asset(img[index],fit: BoxFit.cover,)
                      ),
                    ),
                  );
                },
              )
            )
          ],
        ),
      ),
    );
  }
}