//
//  Generated code. Do not modify.
//  source: boids.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use boidsRequestDescriptor instead')
const BoidsRequest$json = {
  '1': 'BoidsRequest',
};

/// Descriptor for `BoidsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boidsRequestDescriptor = $convert.base64Decode(
    'CgxCb2lkc1JlcXVlc3Q=');

@$core.Deprecated('Use boidsConfigDescriptor instead')
const BoidsConfig$json = {
  '1': 'BoidsConfig',
};

/// Descriptor for `BoidsConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boidsConfigDescriptor = $convert.base64Decode(
    'CgtCb2lkc0NvbmZpZw==');

@$core.Deprecated('Use boidsSessionRequestDescriptor instead')
const BoidsSessionRequest$json = {
  '1': 'BoidsSessionRequest',
};

/// Descriptor for `BoidsSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boidsSessionRequestDescriptor = $convert.base64Decode(
    'ChNCb2lkc1Nlc3Npb25SZXF1ZXN0');

@$core.Deprecated('Use vector2DDescriptor instead')
const Vector2D$json = {
  '1': 'Vector2D',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
  ],
};

/// Descriptor for `Vector2D`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vector2DDescriptor = $convert.base64Decode(
    'CghWZWN0b3IyRBIMCgF4GAEgASgCUgF4EgwKAXkYAiABKAJSAXk=');

@$core.Deprecated('Use boidFrameDescriptor instead')
const BoidFrame$json = {
  '1': 'BoidFrame',
  '2': [
    {'1': 'frame_no', '3': 1, '4': 1, '5': 3, '10': 'frameNo'},
    {'1': 'msg_no', '3': 2, '4': 1, '5': 5, '10': 'msgNo'},
    {'1': 'msg_of', '3': 3, '4': 1, '5': 5, '10': 'msgOf'},
    {'1': 'timestmap', '3': 4, '4': 1, '5': 1, '10': 'timestmap'},
    {'1': 'boids', '3': 5, '4': 3, '5': 11, '6': '.boids.Boid', '10': 'boids'},
  ],
};

/// Descriptor for `BoidFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boidFrameDescriptor = $convert.base64Decode(
    'CglCb2lkRnJhbWUSGQoIZnJhbWVfbm8YASABKANSB2ZyYW1lTm8SFQoGbXNnX25vGAIgASgFUg'
    'Vtc2dObxIVCgZtc2dfb2YYAyABKAVSBW1zZ09mEhwKCXRpbWVzdG1hcBgEIAEoAVIJdGltZXN0'
    'bWFwEiEKBWJvaWRzGAUgAygLMgsuYm9pZHMuQm9pZFIFYm9pZHM=');

@$core.Deprecated('Use boidDescriptor instead')
const Boid$json = {
  '1': 'Boid',
  '2': [
    {'1': 'pos', '3': 1, '4': 1, '5': 11, '6': '.boids.Vector2D', '10': 'pos'},
    {'1': 'vel', '3': 2, '4': 1, '5': 11, '6': '.boids.Vector2D', '10': 'vel'},
    {'1': 'id', '3': 3, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `Boid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boidDescriptor = $convert.base64Decode(
    'CgRCb2lkEiEKA3BvcxgBIAEoCzIPLmJvaWRzLlZlY3RvcjJEUgNwb3MSIQoDdmVsGAIgASgLMg'
    '8uYm9pZHMuVmVjdG9yMkRSA3ZlbBIOCgJpZBgDIAEoBVICaWQ=');

