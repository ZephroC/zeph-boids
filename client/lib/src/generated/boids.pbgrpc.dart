//
//  Generated code. Do not modify.
//  source: boids.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'boids.pb.dart' as $0;

export 'boids.pb.dart';

@$pb.GrpcServiceName('boids.Boids')
class BoidsClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$0.BoidsRequest, $0.BoidsConfig>(
      '/boids.Boids/CreateSession',
      ($0.BoidsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BoidsConfig.fromBuffer(value));
  static final _$streamSession = $grpc.ClientMethod<$0.BoidsSessionRequest, $0.BoidFrame>(
      '/boids.Boids/StreamSession',
      ($0.BoidsSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BoidFrame.fromBuffer(value));

  BoidsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.BoidsConfig> createSession($0.BoidsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseStream<$0.BoidFrame> streamSession($async.Stream<$0.BoidsSessionRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamSession, request, options: options);
  }
}

@$pb.GrpcServiceName('boids.Boids')
abstract class BoidsServiceBase extends $grpc.Service {
  $core.String get $name => 'boids.Boids';

  BoidsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BoidsRequest, $0.BoidsConfig>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BoidsRequest.fromBuffer(value),
        ($0.BoidsConfig value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BoidsSessionRequest, $0.BoidFrame>(
        'StreamSession',
        streamSession,
        true,
        true,
        ($core.List<$core.int> value) => $0.BoidsSessionRequest.fromBuffer(value),
        ($0.BoidFrame value) => value.writeToBuffer()));
  }

  $async.Future<$0.BoidsConfig> createSession_Pre($grpc.ServiceCall call, $async.Future<$0.BoidsRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$0.BoidsConfig> createSession($grpc.ServiceCall call, $0.BoidsRequest request);
  $async.Stream<$0.BoidFrame> streamSession($grpc.ServiceCall call, $async.Stream<$0.BoidsSessionRequest> request);
}
