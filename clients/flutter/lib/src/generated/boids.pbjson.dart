// This is a generated file - do not edit.
//
// Generated from boids.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use requestTypeDescriptor instead')
const RequestType$json = {
  '1': 'RequestType',
  '2': [
    {'1': 'CREATE', '2': 0},
    {'1': 'UPDATE', '2': 1},
    {'1': 'STOP', '2': 2},
  ],
};

/// Descriptor for `RequestType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List requestTypeDescriptor = $convert.base64Decode(
    'CgtSZXF1ZXN0VHlwZRIKCgZDUkVBVEUQABIKCgZVUERBVEUQARIICgRTVE9QEAI=');

@$core.Deprecated('Use boidsSessionRequestDescriptor instead')
const BoidsSessionRequest$json = {
  '1': 'BoidsSessionRequest',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.boids.RequestType',
      '10': 'type'
    },
    {
      '1': 'dimensions',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.boids.Vector2D',
      '9': 0,
      '10': 'dimensions',
      '17': true
    },
    {'1': 'number_of_boids', '3': 3, '4': 1, '5': 5, '10': 'numberOfBoids'},
  ],
  '8': [
    {'1': '_dimensions'},
  ],
};

/// Descriptor for `BoidsSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boidsSessionRequestDescriptor = $convert.base64Decode(
    'ChNCb2lkc1Nlc3Npb25SZXF1ZXN0EiYKBHR5cGUYASABKA4yEi5ib2lkcy5SZXF1ZXN0VHlwZV'
    'IEdHlwZRI0CgpkaW1lbnNpb25zGAIgASgLMg8uYm9pZHMuVmVjdG9yMkRIAFIKZGltZW5zaW9u'
    'c4gBARImCg9udW1iZXJfb2ZfYm9pZHMYAyABKAVSDW51bWJlck9mQm9pZHNCDQoLX2RpbWVuc2'
    'lvbnM=');

@$core.Deprecated('Use vector2DDescriptor instead')
const Vector2D$json = {
  '1': 'Vector2D',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
  ],
};

/// Descriptor for `Vector2D`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vector2DDescriptor = $convert
    .base64Decode('CghWZWN0b3IyRBIMCgF4GAEgASgCUgF4EgwKAXkYAiABKAJSAXk=');

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
