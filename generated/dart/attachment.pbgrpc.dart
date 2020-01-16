///
//  Generated code. Do not modify.
//  source: attachment.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'attachment.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;
export 'attachment.pb.dart';

class LabelServiceClient extends $grpc.Client {
  static final _$getAttachmentMetadata = $grpc.ClientMethod<
          $0.GetAttachmentMetadataRequest, $0.AttachmentMetadata>(
      '/attachment.LabelService/GetAttachmentMetadata',
      ($0.GetAttachmentMetadataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AttachmentMetadata.fromBuffer(value));
  static final _$listAttachmentMetadata = $grpc.ClientMethod<
          $0.ListAttachmentsMetadataRequest,
          $0.ListAttachmentsMetadataResponse>(
      '/attachment.LabelService/ListAttachmentMetadata',
      ($0.ListAttachmentsMetadataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListAttachmentsMetadataResponse.fromBuffer(value));
  static final _$deleteAttachment =
      $grpc.ClientMethod<$0.DeleteAttachmentRequest, $1.Empty>(
          '/attachment.LabelService/DeleteAttachment',
          ($0.DeleteAttachmentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteAllAttachment =
      $grpc.ClientMethod<$0.DeleteAllAttachmentRequest, $1.Empty>(
          '/attachment.LabelService/DeleteAllAttachment',
          ($0.DeleteAllAttachmentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  LabelServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.AttachmentMetadata> getAttachmentMetadata(
      $0.GetAttachmentMetadataRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAttachmentMetadata, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListAttachmentsMetadataResponse>
      listAttachmentMetadata($0.ListAttachmentsMetadataRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listAttachmentMetadata, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Empty> deleteAttachment(
      $0.DeleteAttachmentRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteAttachment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Empty> deleteAllAttachment(
      $0.DeleteAllAttachmentRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteAllAttachment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class LabelServiceBase extends $grpc.Service {
  $core.String get $name => 'attachment.LabelService';

  LabelServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAttachmentMetadataRequest,
            $0.AttachmentMetadata>(
        'GetAttachmentMetadata',
        getAttachmentMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAttachmentMetadataRequest.fromBuffer(value),
        ($0.AttachmentMetadata value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAttachmentsMetadataRequest,
            $0.ListAttachmentsMetadataResponse>(
        'ListAttachmentMetadata',
        listAttachmentMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListAttachmentsMetadataRequest.fromBuffer(value),
        ($0.ListAttachmentsMetadataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAttachmentRequest, $1.Empty>(
        'DeleteAttachment',
        deleteAttachment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteAttachmentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAllAttachmentRequest, $1.Empty>(
        'DeleteAllAttachment',
        deleteAllAttachment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteAllAttachmentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.AttachmentMetadata> getAttachmentMetadata_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAttachmentMetadataRequest> request) async {
    return getAttachmentMetadata(call, await request);
  }

  $async.Future<$0.ListAttachmentsMetadataResponse> listAttachmentMetadata_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListAttachmentsMetadataRequest> request) async {
    return listAttachmentMetadata(call, await request);
  }

  $async.Future<$1.Empty> deleteAttachment_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteAttachmentRequest> request) async {
    return deleteAttachment(call, await request);
  }

  $async.Future<$1.Empty> deleteAllAttachment_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteAllAttachmentRequest> request) async {
    return deleteAllAttachment(call, await request);
  }

  $async.Future<$0.AttachmentMetadata> getAttachmentMetadata(
      $grpc.ServiceCall call, $0.GetAttachmentMetadataRequest request);
  $async.Future<$0.ListAttachmentsMetadataResponse> listAttachmentMetadata(
      $grpc.ServiceCall call, $0.ListAttachmentsMetadataRequest request);
  $async.Future<$1.Empty> deleteAttachment(
      $grpc.ServiceCall call, $0.DeleteAttachmentRequest request);
  $async.Future<$1.Empty> deleteAllAttachment(
      $grpc.ServiceCall call, $0.DeleteAllAttachmentRequest request);
}
