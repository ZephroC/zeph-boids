
import 'dart:async';
import 'dart:ui';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BoidsGame extends FlameGame {
  BoidsGame()
      : super(
    camera: CameraComponent.withFixedResolution(width: 800, height: 600),
  );
  double get width => 800;
  double get height => 600;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    camera.viewfinder.anchor = Anchor.center;
    world.add(GameBoid(velocity: Vector2(0, 0), position: Vector2(0, 0), radius: 4));
  }

  @override
  FutureOr<void> update(double dt) async {

  }
}

class GameBoid extends CircleComponent {
  GameBoid({
    required this.velocity,
    required super.position,
    required double radius,
  }) : super(
    radius: radius,
    anchor: Anchor.center,
    paint: Paint()
      ..color = Colors.pink.shade200
      ..style = PaintingStyle.fill,
  );

  final Vector2 velocity;

  @override
  void update(double dt) {
    super.update(dt);
    // position += velocity * dt;
  }
}