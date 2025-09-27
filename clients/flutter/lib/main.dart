import 'dart:async';
import 'dart:io';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:zeph_boids/src/generated/boids.pbgrpc.dart';

import 'game.dart';

void main() {
  runApp(const BoidsApp());
}

class BoidsApp extends StatelessWidget {
  const BoidsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zeph Boids',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(title: 'Zeph Boids'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late BoidsClient _client;
  bool _streaming = false;
  late StreamController<BoidsSessionRequest> _controller;
  late ResponseStream<BoidFrame> _incomingStream;
  final BoidsGame game = BoidsGame();
  @override
  void initState() {
    super.initState();
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = BoidsClient(channel);
  }

  void _startBoids() {
    if (_streaming) {
      stdout.writeln("Closing stream");
      _controller.add(BoidsSessionRequest(
          type: RequestType.STOP,
      ));
      _incomingStream.cancel();
      return;
    }
    setState(() {
      _streaming = true;
    });
    stdout.writeln("Starting Boids Session");
    _controller = StreamController<BoidsSessionRequest>();
    _incomingStream = _client.streamSession(_controller.stream);
    _controller.add(BoidsSessionRequest(
        type: RequestType.CREATE,
        dimensions: Vector2D(x:fixedWidth,y:fixedHeight),
      numberOfBoids: 16
    ));
    _incomingStream.listen((boidFrame) {
      setState(() {
        // stdout.writeln("Receive");
        game.updateState(boidFrame);
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
      // appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: GameWidget(game: game)),
            Row(
              children: [
                Slider(
                  min: 1,
                  max: 10,
                  divisions: 10,
                  value: 1,
                  onChanged: (double value) {},
                ),
                FloatingActionButton(
                    onPressed: _startBoids,
                    tooltip: 'Start Boids Session',
                    child: Icon(
                        _streaming ? Icons.stop : Icons.play_arrow),
                  ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton:
    );
  }
}
