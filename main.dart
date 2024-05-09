import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS_FANDY NUGRAISWARA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoes',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "lib/assets/fandy.jpg",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            _buildColoredBox(
              Colors.blue,
              "Nike Free Run 2",
              "Mid Premium",
              "RP. 4.000.000",
              "lib/assets/nike_2.png",
            ),
            const SizedBox(height: 20),
            _buildColoredBox(
              Colors.yellow,
              "Nike Air Zoom Pegasus",
              "Men's Road Running Shoes",
              "RP. 1.500.000",
              "lib/assets/nike_1.png",
            ),
            const SizedBox(height: 20),
            _buildColoredBox(
              Colors.green,
              "Nike Air Force 1 ",
              "Men's Snakers",
              "RP. 1.550.000",
              "lib/assets/nike_3.png",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildColoredBox(
    Color color,
    String title,
    String description,
    String harga,
    String gambar,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    harga,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              gambar,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
