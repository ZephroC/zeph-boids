
import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:zeph_boids/src/generated/boids.pb.dart';

const fixedWidth = 1600.0;
const fixedHeight = 900.0;
class BoidsGame extends FlameGame {
  BoidsGame()
      : super(
    camera: CameraComponent.withFixedResolution(width: fixedWidth, height: fixedHeight),
  );
  double get width => fixedWidth;
  double get height => fixedHeight;
  Map<int,GameBoid> _boids = <int,GameBoid>{};
  void updateState(BoidFrame nextFrame) {
    for (final (index, item) in nextFrame.boids.indexed) {
      var b = _boids[index];
      if (b == null) {
        var b = GameBoid(data: item, size: 20);
        world.add(b);
        _boids[index] = b;
      } else {
        b.boid = item;
        _boids[index] = b;
      }
    }
  }

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    camera.viewfinder.anchor = Anchor.center;
  }

  @override
  FutureOr<void> update(double dt) async {
    super.update(dt);
  }
}

class GameBoid extends PolygonComponent {
  GameBoid({
    required this.data,
    required double size,
  }) : super.relative(
    [
      Vector2(-1.0, -1.0),
      Vector2(1.0, 0.0),
      Vector2(-1.0, 1.0),
      Vector2(-0.5, 0.0)
    ],
    parentSize: Vector2.all(size),
    position: Vector2(data.pos.x, data.pos.y),
    anchor: Anchor.center,
    paint: Paint()
      ..color = Colors.pink.shade200
      ..style = PaintingStyle.fill,
  );

  Boid data;
  set boid(Boid b) => {
    data.pos = b.pos,
    data.vel = b.vel
  };

  @override
  void update(double dt) {
    super.position = Vector2(data.pos.x, data.pos.y);
    super.angle = atan2(data.vel.y, data.vel.x);
    super.update(dt);
  }
}