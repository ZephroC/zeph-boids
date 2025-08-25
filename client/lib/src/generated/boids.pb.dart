//
//  Generated code. Do not modify.
//  source: boids.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class BoidsRequest extends $pb.GeneratedMessage {
  factory BoidsRequest() => create();
  BoidsRequest._() : super();
  factory BoidsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoidsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoidsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoidsRequest clone() => BoidsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoidsRequest copyWith(void Function(BoidsRequest) updates) => super.copyWith((message) => updates(message as BoidsRequest)) as BoidsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoidsRequest create() => BoidsRequest._();
  BoidsRequest createEmptyInstance() => create();
  static $pb.PbList<BoidsRequest> createRepeated() => $pb.PbList<BoidsRequest>();
  @$core.pragma('dart2js:noInline')
  static BoidsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoidsRequest>(create);
  static BoidsRequest? _defaultInstance;
}

class BoidsConfig extends $pb.GeneratedMessage {
  factory BoidsConfig() => create();
  BoidsConfig._() : super();
  factory BoidsConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoidsConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoidsConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoidsConfig clone() => BoidsConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoidsConfig copyWith(void Function(BoidsConfig) updates) => super.copyWith((message) => updates(message as BoidsConfig)) as BoidsConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoidsConfig create() => BoidsConfig._();
  BoidsConfig createEmptyInstance() => create();
  static $pb.PbList<BoidsConfig> createRepeated() => $pb.PbList<BoidsConfig>();
  @$core.pragma('dart2js:noInline')
  static BoidsConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoidsConfig>(create);
  static BoidsConfig? _defaultInstance;
}

class BoidsSessionRequest extends $pb.GeneratedMessage {
  factory BoidsSessionRequest() => create();
  BoidsSessionRequest._() : super();
  factory BoidsSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoidsSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoidsSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoidsSessionRequest clone() => BoidsSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoidsSessionRequest copyWith(void Function(BoidsSessionRequest) updates) => super.copyWith((message) => updates(message as BoidsSessionRequest)) as BoidsSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoidsSessionRequest create() => BoidsSessionRequest._();
  BoidsSessionRequest createEmptyInstance() => create();
  static $pb.PbList<BoidsSessionRequest> createRepeated() => $pb.PbList<BoidsSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static BoidsSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoidsSessionRequest>(create);
  static BoidsSessionRequest? _defaultInstance;
}

class Vector2D extends $pb.GeneratedMessage {
  factory Vector2D({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  Vector2D._() : super();
  factory Vector2D.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vector2D.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Vector2D', package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Vector2D clone() => Vector2D()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Vector2D copyWith(void Function(Vector2D) updates) => super.copyWith((message) => updates(message as Vector2D)) as Vector2D;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vector2D create() => Vector2D._();
  Vector2D createEmptyInstance() => create();
  static $pb.PbList<Vector2D> createRepeated() => $pb.PbList<Vector2D>();
  @$core.pragma('dart2js:noInline')
  static Vector2D getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector2D>(create);
  static Vector2D? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class BoidFrame extends $pb.GeneratedMessage {
  factory BoidFrame({
    $fixnum.Int64? frameNo,
    $core.int? msgNo,
    $core.int? msgOf,
    $core.double? timestmap,
    $core.Iterable<Boid>? boids,
  }) {
    final $result = create();
    if (frameNo != null) {
      $result.frameNo = frameNo;
    }
    if (msgNo != null) {
      $result.msgNo = msgNo;
    }
    if (msgOf != null) {
      $result.msgOf = msgOf;
    }
    if (timestmap != null) {
      $result.timestmap = timestmap;
    }
    if (boids != null) {
      $result.boids.addAll(boids);
    }
    return $result;
  }
  BoidFrame._() : super();
  factory BoidFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoidFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoidFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'frameNo')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'msgNo', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'msgOf', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'timestmap', $pb.PbFieldType.OD)
    ..pc<Boid>(5, _omitFieldNames ? '' : 'boids', $pb.PbFieldType.PM, subBuilder: Boid.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoidFrame clone() => BoidFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoidFrame copyWith(void Function(BoidFrame) updates) => super.copyWith((message) => updates(message as BoidFrame)) as BoidFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoidFrame create() => BoidFrame._();
  BoidFrame createEmptyInstance() => create();
  static $pb.PbList<BoidFrame> createRepeated() => $pb.PbList<BoidFrame>();
  @$core.pragma('dart2js:noInline')
  static BoidFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoidFrame>(create);
  static BoidFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get frameNo => $_getI64(0);
  @$pb.TagNumber(1)
  set frameNo($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrameNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrameNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get msgNo => $_getIZ(1);
  @$pb.TagNumber(2)
  set msgNo($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgNo() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get msgOf => $_getIZ(2);
  @$pb.TagNumber(3)
  set msgOf($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgOf() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgOf() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get timestmap => $_getN(3);
  @$pb.TagNumber(4)
  set timestmap($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestmap() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestmap() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Boid> get boids => $_getList(4);
}

class Boid extends $pb.GeneratedMessage {
  factory Boid({
    Vector2D? pos,
    Vector2D? vel,
    $core.int? id,
  }) {
    final $result = create();
    if (pos != null) {
      $result.pos = pos;
    }
    if (vel != null) {
      $result.vel = vel;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  Boid._() : super();
  factory Boid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Boid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Boid', package: const $pb.PackageName(_omitMessageNames ? '' : 'boids'), createEmptyInstance: create)
    ..aOM<Vector2D>(1, _omitFieldNames ? '' : 'pos', subBuilder: Vector2D.create)
    ..aOM<Vector2D>(2, _omitFieldNames ? '' : 'vel', subBuilder: Vector2D.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Boid clone() => Boid()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Boid copyWith(void Function(Boid) updates) => super.copyWith((message) => updates(message as Boid)) as Boid;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Boid create() => Boid._();
  Boid createEmptyInstance() => create();
  static $pb.PbList<Boid> createRepeated() => $pb.PbList<Boid>();
  @$core.pragma('dart2js:noInline')
  static Boid getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Boid>(create);
  static Boid? _defaultInstance;

  @$pb.TagNumber(1)
  Vector2D get pos => $_getN(0);
  @$pb.TagNumber(1)
  set pos(Vector2D v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPos() => $_has(0);
  @$pb.TagNumber(1)
  void clearPos() => clearField(1);
  @$pb.TagNumber(1)
  Vector2D ensurePos() => $_ensure(0);

  @$pb.TagNumber(2)
  Vector2D get vel => $_getN(1);
  @$pb.TagNumber(2)
  set vel(Vector2D v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVel() => $_has(1);
  @$pb.TagNumber(2)
  void clearVel() => clearField(2);
  @$pb.TagNumber(2)
  Vector2D ensureVel() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get id => $_getIZ(2);
  @$pb.TagNumber(3)
  set id($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
