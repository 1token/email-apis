///
//  Generated code. Do not modify.
//  source: attachment.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AttachmentMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AttachmentMetadata', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'uri')
    ..aOS(3, 'filename')
    ..aOS(4, 'mimetype')
    ..hasRequiredFields = false
  ;

  AttachmentMetadata._() : super();
  factory AttachmentMetadata() => create();
  factory AttachmentMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachmentMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AttachmentMetadata clone() => AttachmentMetadata()..mergeFromMessage(this);
  AttachmentMetadata copyWith(void Function(AttachmentMetadata) updates) => super.copyWith((message) => updates(message as AttachmentMetadata));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AttachmentMetadata create() => AttachmentMetadata._();
  AttachmentMetadata createEmptyInstance() => create();
  static $pb.PbList<AttachmentMetadata> createRepeated() => $pb.PbList<AttachmentMetadata>();
  @$core.pragma('dart2js:noInline')
  static AttachmentMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachmentMetadata>(create);
  static AttachmentMetadata _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get filename => $_getSZ(2);
  @$pb.TagNumber(3)
  set filename($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilename() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilename() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mimetype => $_getSZ(3);
  @$pb.TagNumber(4)
  set mimetype($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMimetype() => $_has(3);
  @$pb.TagNumber(4)
  void clearMimetype() => clearField(4);
}

class GetAttachmentMetadataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAttachmentMetadataRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'attachmentMetadataId')
    ..aOS(2, 'emailId')
    ..hasRequiredFields = false
  ;

  GetAttachmentMetadataRequest._() : super();
  factory GetAttachmentMetadataRequest() => create();
  factory GetAttachmentMetadataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachmentMetadataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAttachmentMetadataRequest clone() => GetAttachmentMetadataRequest()..mergeFromMessage(this);
  GetAttachmentMetadataRequest copyWith(void Function(GetAttachmentMetadataRequest) updates) => super.copyWith((message) => updates(message as GetAttachmentMetadataRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAttachmentMetadataRequest create() => GetAttachmentMetadataRequest._();
  GetAttachmentMetadataRequest createEmptyInstance() => create();
  static $pb.PbList<GetAttachmentMetadataRequest> createRepeated() => $pb.PbList<GetAttachmentMetadataRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAttachmentMetadataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachmentMetadataRequest>(create);
  static GetAttachmentMetadataRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get attachmentMetadataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set attachmentMetadataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachmentMetadataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachmentMetadataId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emailId => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailId() => clearField(2);
}

class ListAttachmentsMetadataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListAttachmentsMetadataRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailId')
    ..hasRequiredFields = false
  ;

  ListAttachmentsMetadataRequest._() : super();
  factory ListAttachmentsMetadataRequest() => create();
  factory ListAttachmentsMetadataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAttachmentsMetadataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListAttachmentsMetadataRequest clone() => ListAttachmentsMetadataRequest()..mergeFromMessage(this);
  ListAttachmentsMetadataRequest copyWith(void Function(ListAttachmentsMetadataRequest) updates) => super.copyWith((message) => updates(message as ListAttachmentsMetadataRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAttachmentsMetadataRequest create() => ListAttachmentsMetadataRequest._();
  ListAttachmentsMetadataRequest createEmptyInstance() => create();
  static $pb.PbList<ListAttachmentsMetadataRequest> createRepeated() => $pb.PbList<ListAttachmentsMetadataRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAttachmentsMetadataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAttachmentsMetadataRequest>(create);
  static ListAttachmentsMetadataRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailId => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailId() => clearField(1);
}

class ListAttachmentsMetadataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListAttachmentsMetadataResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<AttachmentMetadata>(1, 'attachmentMetadata', $pb.PbFieldType.PM, subBuilder: AttachmentMetadata.create)
    ..hasRequiredFields = false
  ;

  ListAttachmentsMetadataResponse._() : super();
  factory ListAttachmentsMetadataResponse() => create();
  factory ListAttachmentsMetadataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAttachmentsMetadataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListAttachmentsMetadataResponse clone() => ListAttachmentsMetadataResponse()..mergeFromMessage(this);
  ListAttachmentsMetadataResponse copyWith(void Function(ListAttachmentsMetadataResponse) updates) => super.copyWith((message) => updates(message as ListAttachmentsMetadataResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAttachmentsMetadataResponse create() => ListAttachmentsMetadataResponse._();
  ListAttachmentsMetadataResponse createEmptyInstance() => create();
  static $pb.PbList<ListAttachmentsMetadataResponse> createRepeated() => $pb.PbList<ListAttachmentsMetadataResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAttachmentsMetadataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAttachmentsMetadataResponse>(create);
  static ListAttachmentsMetadataResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AttachmentMetadata> get attachmentMetadata => $_getList(0);
}

class DeleteAttachmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteAttachmentRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'attachmentMetadataId')
    ..aOS(2, 'emailId')
    ..hasRequiredFields = false
  ;

  DeleteAttachmentRequest._() : super();
  factory DeleteAttachmentRequest() => create();
  factory DeleteAttachmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAttachmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteAttachmentRequest clone() => DeleteAttachmentRequest()..mergeFromMessage(this);
  DeleteAttachmentRequest copyWith(void Function(DeleteAttachmentRequest) updates) => super.copyWith((message) => updates(message as DeleteAttachmentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAttachmentRequest create() => DeleteAttachmentRequest._();
  DeleteAttachmentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAttachmentRequest> createRepeated() => $pb.PbList<DeleteAttachmentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAttachmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAttachmentRequest>(create);
  static DeleteAttachmentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get attachmentMetadataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set attachmentMetadataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachmentMetadataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachmentMetadataId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emailId => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailId() => clearField(2);
}

class DeleteAllAttachmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteAllAttachmentRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailId')
    ..hasRequiredFields = false
  ;

  DeleteAllAttachmentRequest._() : super();
  factory DeleteAllAttachmentRequest() => create();
  factory DeleteAllAttachmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAllAttachmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteAllAttachmentRequest clone() => DeleteAllAttachmentRequest()..mergeFromMessage(this);
  DeleteAllAttachmentRequest copyWith(void Function(DeleteAllAttachmentRequest) updates) => super.copyWith((message) => updates(message as DeleteAllAttachmentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAllAttachmentRequest create() => DeleteAllAttachmentRequest._();
  DeleteAllAttachmentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAllAttachmentRequest> createRepeated() => $pb.PbList<DeleteAllAttachmentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAllAttachmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAllAttachmentRequest>(create);
  static DeleteAllAttachmentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailId => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailId() => clearField(1);
}

