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
      title: 'Questao 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 109, 107, 112)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Application'),
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
        backgroundColor: const Color.fromARGB(255, 182, 221, 109),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // botão de voltar
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.title),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert), // ícone de três pontinhos
            onSelected: (String value) {
              // Ação a ser realizada ao selecionar uma opção
              if (value == 'opção1') {
                // faça algo para opção 1
              } else if (value == 'opção2') {
                // faça algo para opção 2
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'opção1',
                  child: Text('Opção 1'),
                ),
                const PopupMenuItem<String>(
                  value: 'opção2',
                  child: Text('Opção 2'),
                ),
              ];
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Personal info', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'First name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last name',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Birthday',
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('MM/DD/YYYY'),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Social security',
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('### -## - ####'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text('Residence address', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Address',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(hintText: 'City'),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(hintText: 'State'),
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(hintText: 'ZIP Code'),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(hintText: 'Country'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
