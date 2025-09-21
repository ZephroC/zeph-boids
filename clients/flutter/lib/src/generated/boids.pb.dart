// This is a generated file - do not edit.
//
// Generated from boids.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'boids.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'boids.pbenum.dart';

class BoidsSessionRequest extends $pb.GeneratedMessage {
  factory BoidsSessionRequest({
    RequestType? type,
    Vector2D? dimensions,
    $core.int? numberOfBoids,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (dimensions != null) result.dimensions = dimensions;
    if (numberOfBoids != null) result.numberOfBoids = numberOfBoids;
    return result;
  }

  BoidsSessionRequest._();

  factory BoidsSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoidsSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoidsSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'),
      createEmptyInstance: create)
    ..e<RequestType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: RequestType.CREATE,
        valueOf: RequestType.valueOf,
        enumValues: RequestType.values)
    ..aOM<Vector2D>(2, _omitFieldNames ? '' : 'dimensions',
        subBuilder: Vector2D.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'numberOfBoids', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoidsSessionRequest clone() => BoidsSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoidsSessionRequest copyWith(void Function(BoidsSessionRequest) updates) =>
      super.copyWith((message) => updates(message as BoidsSessionRequest))
          as BoidsSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoidsSessionRequest create() => BoidsSessionRequest._();
  @$core.override
  BoidsSessionRequest createEmptyInstance() => create();
  static $pb.PbList<BoidsSessionRequest> createRepeated() =>
      $pb.PbList<BoidsSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static BoidsSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoidsSessionRequest>(create);
  static BoidsSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RequestType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RequestType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  Vector2D get dimensions => $_getN(1);
  @$pb.TagNumber(2)
  set dimensions(Vector2D value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDimensions() => $_has(1);
  @$pb.TagNumber(2)
  void clearDimensions() => $_clearField(2);
  @$pb.TagNumber(2)
  Vector2D ensureDimensions() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get numberOfBoids => $_getIZ(2);
  @$pb.TagNumber(3)
  set numberOfBoids($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNumberOfBoids() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumberOfBoids() => $_clearField(3);
}

class Vector2D extends $pb.GeneratedMessage {
  factory Vector2D({
    $core.double? x,
    $core.double? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  Vector2D._();

  factory Vector2D.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Vector2D.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Vector2D',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vector2D clone() => Vector2D()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vector2D copyWith(void Function(Vector2D) updates) =>
      super.copyWith((message) => updates(message as Vector2D)) as Vector2D;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vector2D create() => Vector2D._();
  @$core.override
  Vector2D createEmptyInstance() => create();
  static $pb.PbList<Vector2D> createRepeated() => $pb.PbList<Vector2D>();
  @$core.pragma('dart2js:noInline')
  static Vector2D getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector2D>(create);
  static Vector2D? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);
}

class BoidFrame extends $pb.GeneratedMessage {
  factory BoidFrame({
    $fixnum.Int64? frameNo,
    $core.int? msgNo,
    $core.int? msgOf,
    $core.double? timestmap,
    $core.Iterable<Boid>? boids,
  }) {
    final result = create();
    if (frameNo != null) result.frameNo = frameNo;
    if (msgNo != null) result.msgNo = msgNo;
    if (msgOf != null) result.msgOf = msgOf;
    if (timestmap != null) result.timestmap = timestmap;
    if (boids != null) result.boids.addAll(boids);
    return result;
  }

  BoidFrame._();

  factory BoidFrame.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoidFrame.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoidFrame',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'frameNo')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'msgNo', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'msgOf', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'timestmap', $pb.PbFieldType.OD)
    ..pc<Boid>(5, _omitFieldNames ? '' : 'boids', $pb.PbFieldType.PM,
        subBuilder: Boid.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoidFrame clone() => BoidFrame()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoidFrame copyWith(void Function(BoidFrame) updates) =>
      super.copyWith((message) => updates(message as BoidFrame)) as BoidFrame;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoidFrame create() => BoidFrame._();
  @$core.override
  BoidFrame createEmptyInstance() => create();
  static $pb.PbList<BoidFrame> createRepeated() => $pb.PbList<BoidFrame>();
  @$core.pragma('dart2js:noInline')
  static BoidFrame getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoidFrame>(create);
  static BoidFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get frameNo => $_getI64(0);
  @$pb.TagNumber(1)
  set frameNo($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFrameNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrameNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get msgNo => $_getIZ(1);
  @$pb.TagNumber(2)
  set msgNo($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMsgNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgNo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get msgOf => $_getIZ(2);
  @$pb.TagNumber(3)
  set msgOf($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMsgOf() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgOf() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get timestmap => $_getN(3);
  @$pb.TagNumber(4)
  set timestmap($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimestmap() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestmap() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<Boid> get boids => $_getList(4);
}

class Boid extends $pb.GeneratedMessage {
  factory Boid({
    Vector2D? pos,
    Vector2D? vel,
    $core.int? id,
  }) {
    final result = create();
    if (pos != null) result.pos = pos;
    if (vel != null) result.vel = vel;
    if (id != null) result.id = id;
    return result;
  }

  Boid._();

  factory Boid.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Boid.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Boid',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'),
      createEmptyInstance: create)
    ..aOM<Vector2D>(1, _omitFieldNames ? '' : 'pos',
        subBuilder: Vector2D.create)
    ..aOM<Vector2D>(2, _omitFieldNames ? '' : 'vel',
        subBuilder: Vector2D.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Boid clone() => Boid()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Boid copyWith(void Function(Boid) updates) =>
      super.copyWith((message) => updates(message as Boid)) as Boid;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Boid create() => Boid._();
  @$core.override
  Boid createEmptyInstance() => create();
  static $pb.PbList<Boid> createRepeated() => $pb.PbList<Boid>();
  @$core.pragma('dart2js:noInline')
  static Boid getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Boid>(create);
  static Boid? _defaultInstance;

  @$pb.TagNumber(1)
  Vector2D get pos => $_getN(0);
  @$pb.TagNumber(1)
  set pos(Vector2D value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPos() => $_has(0);
  @$pb.TagNumber(1)
  void clearPos() => $_clearField(1);
  @$pb.TagNumber(1)
  Vector2D ensurePos() => $_ensure(0);

  @$pb.TagNumber(2)
  Vector2D get vel => $_getN(1);
  @$pb.TagNumber(2)
  set vel(Vector2D value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVel() => $_has(1);
  @$pb.TagNumber(2)
  void clearVel() => $_clearField(2);
  @$pb.TagNumber(2)
  Vector2D ensureVel() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get id => $_getIZ(2);
  @$pb.TagNumber(3)
  set id($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
