import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:client/src/generated/boids.pbgrpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boids Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Boids Demo Home Page'),
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
  late BoidsClient _client;
  List<Boid> _boids = [];
  bool _streaming = false;

  @override
  void initState() {
    super.initState();
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _client = BoidsClient(channel);
  }

  void _getBoids() {
    if (_streaming) {
      return;
    }
    setState(() {
      _streaming = true;
    });

    final stream = _client.createSession(BoidsRequest());
    stream.listen((boid) {
      setState(() {
        _boids.add(boid);
      });
    }, onDone: () {
      setState(() {
        _streaming = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Boids received:',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _boids.length,
                itemBuilder: (context, index) {
                  final boid = _boids[index];
                  return Text('Boid: x=${boid.x}, y=${boid.y}');
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getBoids,
        tooltip: 'Get Boids',
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}