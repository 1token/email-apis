///
//  Generated code. Do not modify.
//  source: email.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;
import 'google/protobuf/any.pb.dart' as $3;
import 'google/rpc/status.pb.dart' as $4;

import 'email.pbenum.dart';

export 'email.pbenum.dart';

class Sender extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Sender', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'emailAddress')
    ..aOS(3, 'displayName')
    ..hasRequiredFields = false
  ;

  Sender._() : super();
  factory Sender() => create();
  factory Sender.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sender.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Sender clone() => Sender()..mergeFromMessage(this);
  Sender copyWith(void Function(Sender) updates) => super.copyWith((message) => updates(message as Sender));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sender create() => Sender._();
  Sender createEmptyInstance() => create();
  static $pb.PbList<Sender> createRepeated() => $pb.PbList<Sender>();
  @$core.pragma('dart2js:noInline')
  static Sender getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sender>(create);
  static Sender _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emailAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => clearField(3);
}

class Recipient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Recipient', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'emailAddress')
    ..aOS(3, 'displayName')
    ..hasRequiredFields = false
  ;

  Recipient._() : super();
  factory Recipient() => create();
  factory Recipient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Recipient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Recipient clone() => Recipient()..mergeFromMessage(this);
  Recipient copyWith(void Function(Recipient) updates) => super.copyWith((message) => updates(message as Recipient));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Recipient create() => Recipient._();
  Recipient createEmptyInstance() => create();
  static $pb.PbList<Recipient> createRepeated() => $pb.PbList<Recipient>();
  @$core.pragma('dart2js:noInline')
  static Recipient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Recipient>(create);
  static Recipient _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emailAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => clearField(3);
}

class Draft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Draft', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'snipped')
    ..aOM<Envelope>(3, 'envelope', subBuilder: Envelope.create)
    ..m<$core.String, $core.String>(4, 'labels', entryClassName: 'Draft.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..hasRequiredFields = false
  ;

  Draft._() : super();
  factory Draft() => create();
  factory Draft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Draft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Draft clone() => Draft()..mergeFromMessage(this);
  Draft copyWith(void Function(Draft) updates) => super.copyWith((message) => updates(message as Draft));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Draft create() => Draft._();
  Draft createEmptyInstance() => create();
  static $pb.PbList<Draft> createRepeated() => $pb.PbList<Draft>();
  @$core.pragma('dart2js:noInline')
  static Draft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Draft>(create);
  static Draft _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get snipped => $_getSZ(1);
  @$pb.TagNumber(2)
  set snipped($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSnipped() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnipped() => clearField(2);

  @$pb.TagNumber(3)
  Envelope get envelope => $_getN(2);
  @$pb.TagNumber(3)
  set envelope(Envelope v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnvelope() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnvelope() => clearField(3);
  @$pb.TagNumber(3)
  Envelope ensureEnvelope() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get labels => $_getMap(3);
}

class Email extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Email', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'snipped')
    ..aOS(3, 'historyId')
    ..aOM<Envelope>(4, 'envelope', subBuilder: Envelope.create)
    ..aOM<$2.Timestamp>(5, 'sentAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(6, 'receivedAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(7, 'snoozedAt', subBuilder: $2.Timestamp.create)
    ..aOB(8, 'fwd')
    ..m<$core.String, $core.String>(9, 'labels', entryClassName: 'Email.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..hasRequiredFields = false
  ;

  Email._() : super();
  factory Email() => create();
  factory Email.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Email.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Email clone() => Email()..mergeFromMessage(this);
  Email copyWith(void Function(Email) updates) => super.copyWith((message) => updates(message as Email));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Email create() => Email._();
  Email createEmptyInstance() => create();
  static $pb.PbList<Email> createRepeated() => $pb.PbList<Email>();
  @$core.pragma('dart2js:noInline')
  static Email getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Email>(create);
  static Email _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get snipped => $_getSZ(1);
  @$pb.TagNumber(2)
  set snipped($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSnipped() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnipped() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get historyId => $_getSZ(2);
  @$pb.TagNumber(3)
  set historyId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHistoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearHistoryId() => clearField(3);

  @$pb.TagNumber(4)
  Envelope get envelope => $_getN(3);
  @$pb.TagNumber(4)
  set envelope(Envelope v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnvelope() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnvelope() => clearField(4);
  @$pb.TagNumber(4)
  Envelope ensureEnvelope() => $_ensure(3);

  @$pb.TagNumber(5)
  $2.Timestamp get sentAt => $_getN(4);
  @$pb.TagNumber(5)
  set sentAt($2.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSentAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearSentAt() => clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureSentAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $2.Timestamp get receivedAt => $_getN(5);
  @$pb.TagNumber(6)
  set receivedAt($2.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReceivedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearReceivedAt() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureReceivedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $2.Timestamp get snoozedAt => $_getN(6);
  @$pb.TagNumber(7)
  set snoozedAt($2.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSnoozedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearSnoozedAt() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureSnoozedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get fwd => $_getBF(7);
  @$pb.TagNumber(8)
  set fwd($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFwd() => $_has(7);
  @$pb.TagNumber(8)
  void clearFwd() => clearField(8);

  @$pb.TagNumber(9)
  $core.Map<$core.String, $core.String> get labels => $_getMap(8);
}

class Thread extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Thread', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'snipped')
    ..aOS(3, 'historyId')
    ..pc<Email>(4, 'email', $pb.PbFieldType.PM, subBuilder: Email.create)
    ..hasRequiredFields = false
  ;

  Thread._() : super();
  factory Thread() => create();
  factory Thread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Thread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Thread clone() => Thread()..mergeFromMessage(this);
  Thread copyWith(void Function(Thread) updates) => super.copyWith((message) => updates(message as Thread));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Thread create() => Thread._();
  Thread createEmptyInstance() => create();
  static $pb.PbList<Thread> createRepeated() => $pb.PbList<Thread>();
  @$core.pragma('dart2js:noInline')
  static Thread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Thread>(create);
  static Thread _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get snipped => $_getSZ(1);
  @$pb.TagNumber(2)
  set snipped($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSnipped() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnipped() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get historyId => $_getSZ(2);
  @$pb.TagNumber(3)
  set historyId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHistoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearHistoryId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Email> get email => $_getList(3);
}

class Envelope extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Envelope', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOM<Sender>(2, 'from', subBuilder: Sender.create)
    ..pc<Recipient>(3, 'to', $pb.PbFieldType.PM, subBuilder: Recipient.create)
    ..pc<Recipient>(4, 'cc', $pb.PbFieldType.PM, subBuilder: Recipient.create)
    ..pc<Recipient>(5, 'bcc', $pb.PbFieldType.PM, subBuilder: Recipient.create)
    ..pc<Recipient>(6, 'groups', $pb.PbFieldType.PM, subBuilder: Recipient.create)
    ..m<$core.String, $core.String>(7, 'tags', entryClassName: 'Envelope.TagsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..aOM<Message>(8, 'message', subBuilder: Message.create)
    ..pc<Attachment>(9, 'attachments', $pb.PbFieldType.PM, subBuilder: Attachment.create)
    ..hasRequiredFields = false
  ;

  Envelope._() : super();
  factory Envelope() => create();
  factory Envelope.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Envelope.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Envelope clone() => Envelope()..mergeFromMessage(this);
  Envelope copyWith(void Function(Envelope) updates) => super.copyWith((message) => updates(message as Envelope));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Envelope create() => Envelope._();
  Envelope createEmptyInstance() => create();
  static $pb.PbList<Envelope> createRepeated() => $pb.PbList<Envelope>();
  @$core.pragma('dart2js:noInline')
  static Envelope getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Envelope>(create);
  static Envelope _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Sender get from => $_getN(1);
  @$pb.TagNumber(2)
  set from(Sender v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);
  @$pb.TagNumber(2)
  Sender ensureFrom() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Recipient> get to => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Recipient> get cc => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Recipient> get bcc => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Recipient> get groups => $_getList(5);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get tags => $_getMap(6);

  @$pb.TagNumber(8)
  Message get message => $_getN(7);
  @$pb.TagNumber(8)
  set message(Message v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasMessage() => $_has(7);
  @$pb.TagNumber(8)
  void clearMessage() => clearField(8);
  @$pb.TagNumber(8)
  Message ensureMessage() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.List<Attachment> get attachments => $_getList(8);
}

enum Message_Body {
  data, 
  uri, 
  notSet
}

class Message extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Message_Body> _Message_BodyByTag = {
    4 : Message_Body.data,
    5 : Message_Body.uri,
    0 : Message_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Message', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'subject')
    ..aOS(3, 'mimetype')
    ..a<$core.List<$core.int>>(4, 'data', $pb.PbFieldType.OY)
    ..aOS(5, 'uri')
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message() => create();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Message clone() => Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message _defaultInstance;

  Message_Body whichBody() => _Message_BodyByTag[$_whichOneof(0)];
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subject => $_getSZ(1);
  @$pb.TagNumber(2)
  set subject($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubject() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubject() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mimetype => $_getSZ(2);
  @$pb.TagNumber(3)
  set mimetype($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMimetype() => $_has(2);
  @$pb.TagNumber(3)
  void clearMimetype() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get uri => $_getSZ(4);
  @$pb.TagNumber(5)
  set uri($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUri() => $_has(4);
  @$pb.TagNumber(5)
  void clearUri() => clearField(5);
}

enum Attachment_Content {
  data, 
  uri, 
  notSet
}

class Attachment extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Attachment_Content> _Attachment_ContentByTag = {
    4 : Attachment_Content.data,
    5 : Attachment_Content.uri,
    0 : Attachment_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Attachment', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOS(1, 'id')
    ..aOS(2, 'filename')
    ..aOS(3, 'mimetype')
    ..a<$core.List<$core.int>>(4, 'data', $pb.PbFieldType.OY)
    ..aOS(5, 'uri')
    ..hasRequiredFields = false
  ;

  Attachment._() : super();
  factory Attachment() => create();
  factory Attachment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Attachment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Attachment clone() => Attachment()..mergeFromMessage(this);
  Attachment copyWith(void Function(Attachment) updates) => super.copyWith((message) => updates(message as Attachment));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Attachment create() => Attachment._();
  Attachment createEmptyInstance() => create();
  static $pb.PbList<Attachment> createRepeated() => $pb.PbList<Attachment>();
  @$core.pragma('dart2js:noInline')
  static Attachment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Attachment>(create);
  static Attachment _defaultInstance;

  Attachment_Content whichContent() => _Attachment_ContentByTag[$_whichOneof(0)];
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mimetype => $_getSZ(2);
  @$pb.TagNumber(3)
  set mimetype($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMimetype() => $_has(2);
  @$pb.TagNumber(3)
  void clearMimetype() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get uri => $_getSZ(4);
  @$pb.TagNumber(5)
  set uri($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUri() => $_has(4);
  @$pb.TagNumber(5)
  void clearUri() => clearField(5);
}

class Label extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Label', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'type')
    ..hasRequiredFields = false
  ;

  Label._() : super();
  factory Label() => create();
  factory Label.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Label.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Label clone() => Label()..mergeFromMessage(this);
  Label copyWith(void Function(Label) updates) => super.copyWith((message) => updates(message as Label));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Label create() => Label._();
  Label createEmptyInstance() => create();
  static $pb.PbList<Label> createRepeated() => $pb.PbList<Label>();
  @$core.pragma('dart2js:noInline')
  static Label getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Label>(create);
  static Label _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class HistoryLabelAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryLabelAdded', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pPS(1, 'labelIds')
    ..aOM<Email>(2, 'email', subBuilder: Email.create)
    ..hasRequiredFields = false
  ;

  HistoryLabelAdded._() : super();
  factory HistoryLabelAdded() => create();
  factory HistoryLabelAdded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryLabelAdded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryLabelAdded clone() => HistoryLabelAdded()..mergeFromMessage(this);
  HistoryLabelAdded copyWith(void Function(HistoryLabelAdded) updates) => super.copyWith((message) => updates(message as HistoryLabelAdded));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryLabelAdded create() => HistoryLabelAdded._();
  HistoryLabelAdded createEmptyInstance() => create();
  static $pb.PbList<HistoryLabelAdded> createRepeated() => $pb.PbList<HistoryLabelAdded>();
  @$core.pragma('dart2js:noInline')
  static HistoryLabelAdded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryLabelAdded>(create);
  static HistoryLabelAdded _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get labelIds => $_getList(0);

  @$pb.TagNumber(2)
  Email get email => $_getN(1);
  @$pb.TagNumber(2)
  set email(Email v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
  @$pb.TagNumber(2)
  Email ensureEmail() => $_ensure(1);
}

class HistoryLabelRemoved extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryLabelRemoved', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pPS(1, 'labelIds')
    ..aOM<Email>(2, 'email', subBuilder: Email.create)
    ..hasRequiredFields = false
  ;

  HistoryLabelRemoved._() : super();
  factory HistoryLabelRemoved() => create();
  factory HistoryLabelRemoved.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryLabelRemoved.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryLabelRemoved clone() => HistoryLabelRemoved()..mergeFromMessage(this);
  HistoryLabelRemoved copyWith(void Function(HistoryLabelRemoved) updates) => super.copyWith((message) => updates(message as HistoryLabelRemoved));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryLabelRemoved create() => HistoryLabelRemoved._();
  HistoryLabelRemoved createEmptyInstance() => create();
  static $pb.PbList<HistoryLabelRemoved> createRepeated() => $pb.PbList<HistoryLabelRemoved>();
  @$core.pragma('dart2js:noInline')
  static HistoryLabelRemoved getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryLabelRemoved>(create);
  static HistoryLabelRemoved _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get labelIds => $_getList(0);

  @$pb.TagNumber(2)
  Email get email => $_getN(1);
  @$pb.TagNumber(2)
  set email(Email v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
  @$pb.TagNumber(2)
  Email ensureEmail() => $_ensure(1);
}

class HistoryEmailAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryEmailAdded', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Email>(1, 'email', subBuilder: Email.create)
    ..hasRequiredFields = false
  ;

  HistoryEmailAdded._() : super();
  factory HistoryEmailAdded() => create();
  factory HistoryEmailAdded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryEmailAdded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryEmailAdded clone() => HistoryEmailAdded()..mergeFromMessage(this);
  HistoryEmailAdded copyWith(void Function(HistoryEmailAdded) updates) => super.copyWith((message) => updates(message as HistoryEmailAdded));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryEmailAdded create() => HistoryEmailAdded._();
  HistoryEmailAdded createEmptyInstance() => create();
  static $pb.PbList<HistoryEmailAdded> createRepeated() => $pb.PbList<HistoryEmailAdded>();
  @$core.pragma('dart2js:noInline')
  static HistoryEmailAdded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryEmailAdded>(create);
  static HistoryEmailAdded _defaultInstance;

  @$pb.TagNumber(1)
  Email get email => $_getN(0);
  @$pb.TagNumber(1)
  set email(Email v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
  @$pb.TagNumber(1)
  Email ensureEmail() => $_ensure(0);
}

class HistoryEmailDeleted extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HistoryEmailDeleted', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Email>(1, 'email', subBuilder: Email.create)
    ..hasRequiredFields = false
  ;

  HistoryEmailDeleted._() : super();
  factory HistoryEmailDeleted() => create();
  factory HistoryEmailDeleted.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryEmailDeleted.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HistoryEmailDeleted clone() => HistoryEmailDeleted()..mergeFromMessage(this);
  HistoryEmailDeleted copyWith(void Function(HistoryEmailDeleted) updates) => super.copyWith((message) => updates(message as HistoryEmailDeleted));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryEmailDeleted create() => HistoryEmailDeleted._();
  HistoryEmailDeleted createEmptyInstance() => create();
  static $pb.PbList<HistoryEmailDeleted> createRepeated() => $pb.PbList<HistoryEmailDeleted>();
  @$core.pragma('dart2js:noInline')
  static HistoryEmailDeleted getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryEmailDeleted>(create);
  static HistoryEmailDeleted _defaultInstance;

  @$pb.TagNumber(1)
  Email get email => $_getN(0);
  @$pb.TagNumber(1)
  set email(Email v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
  @$pb.TagNumber(1)
  Email ensureEmail() => $_ensure(0);
}

class History extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('History', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.OU3)
    ..pc<Email>(2, 'emails', $pb.PbFieldType.PM, subBuilder: Email.create)
    ..pc<HistoryLabelAdded>(3, 'labelAdded', $pb.PbFieldType.PM, subBuilder: HistoryLabelAdded.create)
    ..pc<HistoryLabelRemoved>(4, 'labelRemoved', $pb.PbFieldType.PM, subBuilder: HistoryLabelRemoved.create)
    ..pc<HistoryEmailAdded>(5, 'emailAdded', $pb.PbFieldType.PM, subBuilder: HistoryEmailAdded.create)
    ..pc<HistoryEmailDeleted>(6, 'emailDeleted', $pb.PbFieldType.PM, subBuilder: HistoryEmailDeleted.create)
    ..hasRequiredFields = false
  ;

  History._() : super();
  factory History() => create();
  factory History.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory History.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  History clone() => History()..mergeFromMessage(this);
  History copyWith(void Function(History) updates) => super.copyWith((message) => updates(message as History));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static History create() => History._();
  History createEmptyInstance() => create();
  static $pb.PbList<History> createRepeated() => $pb.PbList<History>();
  @$core.pragma('dart2js:noInline')
  static History getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<History>(create);
  static History _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Email> get emails => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<HistoryLabelAdded> get labelAdded => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<HistoryLabelRemoved> get labelRemoved => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<HistoryEmailAdded> get emailAdded => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<HistoryEmailDeleted> get emailDeleted => $_getList(5);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailAddress', protoName: 'emailAddress')
    ..aOS(2, 'historyId')
    ..a<$core.int>(3, 'emailsTotal', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'threadsTotal', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get historyId => $_getSZ(1);
  @$pb.TagNumber(2)
  set historyId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHistoryId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHistoryId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get emailsTotal => $_getIZ(2);
  @$pb.TagNumber(3)
  set emailsTotal($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmailsTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmailsTotal() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get threadsTotal => $_getIZ(3);
  @$pb.TagNumber(4)
  set threadsTotal($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasThreadsTotal() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreadsTotal() => clearField(4);
}

class GetDraftRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetDraftRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'draftId')
    ..hasRequiredFields = false
  ;

  GetDraftRequest._() : super();
  factory GetDraftRequest() => create();
  factory GetDraftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDraftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetDraftRequest clone() => GetDraftRequest()..mergeFromMessage(this);
  GetDraftRequest copyWith(void Function(GetDraftRequest) updates) => super.copyWith((message) => updates(message as GetDraftRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDraftRequest create() => GetDraftRequest._();
  GetDraftRequest createEmptyInstance() => create();
  static $pb.PbList<GetDraftRequest> createRepeated() => $pb.PbList<GetDraftRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDraftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDraftRequest>(create);
  static GetDraftRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get draftId => $_getSZ(0);
  @$pb.TagNumber(1)
  set draftId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDraftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDraftId() => clearField(1);
}

class ListDraftsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListDraftsRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'pageToken')
    ..a<$core.int>(2, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(3, 'query')
    ..hasRequiredFields = false
  ;

  ListDraftsRequest._() : super();
  factory ListDraftsRequest() => create();
  factory ListDraftsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDraftsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListDraftsRequest clone() => ListDraftsRequest()..mergeFromMessage(this);
  ListDraftsRequest copyWith(void Function(ListDraftsRequest) updates) => super.copyWith((message) => updates(message as ListDraftsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDraftsRequest create() => ListDraftsRequest._();
  ListDraftsRequest createEmptyInstance() => create();
  static $pb.PbList<ListDraftsRequest> createRepeated() => $pb.PbList<ListDraftsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDraftsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDraftsRequest>(create);
  static ListDraftsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pageToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set pageToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get query => $_getSZ(2);
  @$pb.TagNumber(3)
  set query($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuery() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuery() => clearField(3);
}

class CreateDraftRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateDraftRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Draft>(1, 'draft', subBuilder: Draft.create)
    ..hasRequiredFields = false
  ;

  CreateDraftRequest._() : super();
  factory CreateDraftRequest() => create();
  factory CreateDraftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDraftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateDraftRequest clone() => CreateDraftRequest()..mergeFromMessage(this);
  CreateDraftRequest copyWith(void Function(CreateDraftRequest) updates) => super.copyWith((message) => updates(message as CreateDraftRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateDraftRequest create() => CreateDraftRequest._();
  CreateDraftRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDraftRequest> createRepeated() => $pb.PbList<CreateDraftRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDraftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDraftRequest>(create);
  static CreateDraftRequest _defaultInstance;

  @$pb.TagNumber(1)
  Draft get draft => $_getN(0);
  @$pb.TagNumber(1)
  set draft(Draft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearDraft() => clearField(1);
  @$pb.TagNumber(1)
  Draft ensureDraft() => $_ensure(0);
}

class UpdateDraftRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateDraftRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Draft>(1, 'draft', subBuilder: Draft.create)
    ..hasRequiredFields = false
  ;

  UpdateDraftRequest._() : super();
  factory UpdateDraftRequest() => create();
  factory UpdateDraftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateDraftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateDraftRequest clone() => UpdateDraftRequest()..mergeFromMessage(this);
  UpdateDraftRequest copyWith(void Function(UpdateDraftRequest) updates) => super.copyWith((message) => updates(message as UpdateDraftRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateDraftRequest create() => UpdateDraftRequest._();
  UpdateDraftRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDraftRequest> createRepeated() => $pb.PbList<UpdateDraftRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDraftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateDraftRequest>(create);
  static UpdateDraftRequest _defaultInstance;

  @$pb.TagNumber(1)
  Draft get draft => $_getN(0);
  @$pb.TagNumber(1)
  set draft(Draft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearDraft() => clearField(1);
  @$pb.TagNumber(1)
  Draft ensureDraft() => $_ensure(0);
}

class DeleteDraftRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteDraftRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'draftId')
    ..hasRequiredFields = false
  ;

  DeleteDraftRequest._() : super();
  factory DeleteDraftRequest() => create();
  factory DeleteDraftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteDraftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteDraftRequest clone() => DeleteDraftRequest()..mergeFromMessage(this);
  DeleteDraftRequest copyWith(void Function(DeleteDraftRequest) updates) => super.copyWith((message) => updates(message as DeleteDraftRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteDraftRequest create() => DeleteDraftRequest._();
  DeleteDraftRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteDraftRequest> createRepeated() => $pb.PbList<DeleteDraftRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteDraftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteDraftRequest>(create);
  static DeleteDraftRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get draftId => $_getSZ(0);
  @$pb.TagNumber(1)
  set draftId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDraftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDraftId() => clearField(1);
}

class SendDraftRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendDraftRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Draft>(1, 'draft', subBuilder: Draft.create)
    ..hasRequiredFields = false
  ;

  SendDraftRequest._() : super();
  factory SendDraftRequest() => create();
  factory SendDraftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDraftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendDraftRequest clone() => SendDraftRequest()..mergeFromMessage(this);
  SendDraftRequest copyWith(void Function(SendDraftRequest) updates) => super.copyWith((message) => updates(message as SendDraftRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendDraftRequest create() => SendDraftRequest._();
  SendDraftRequest createEmptyInstance() => create();
  static $pb.PbList<SendDraftRequest> createRepeated() => $pb.PbList<SendDraftRequest>();
  @$core.pragma('dart2js:noInline')
  static SendDraftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDraftRequest>(create);
  static SendDraftRequest _defaultInstance;

  @$pb.TagNumber(1)
  Draft get draft => $_getN(0);
  @$pb.TagNumber(1)
  set draft(Draft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearDraft() => clearField(1);
  @$pb.TagNumber(1)
  Draft ensureDraft() => $_ensure(0);
}

class ListDraftsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListDraftsResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Draft>(1, 'draft', $pb.PbFieldType.PM, subBuilder: Draft.create)
    ..aOS(2, 'nextPageToken')
    ..a<$core.int>(3, 'totalSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ListDraftsResponse._() : super();
  factory ListDraftsResponse() => create();
  factory ListDraftsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDraftsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListDraftsResponse clone() => ListDraftsResponse()..mergeFromMessage(this);
  ListDraftsResponse copyWith(void Function(ListDraftsResponse) updates) => super.copyWith((message) => updates(message as ListDraftsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDraftsResponse create() => ListDraftsResponse._();
  ListDraftsResponse createEmptyInstance() => create();
  static $pb.PbList<ListDraftsResponse> createRepeated() => $pb.PbList<ListDraftsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDraftsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDraftsResponse>(create);
  static ListDraftsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Draft> get draft => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);
}

class GetEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetEmailRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailId')
    ..hasRequiredFields = false
  ;

  GetEmailRequest._() : super();
  factory GetEmailRequest() => create();
  factory GetEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetEmailRequest clone() => GetEmailRequest()..mergeFromMessage(this);
  GetEmailRequest copyWith(void Function(GetEmailRequest) updates) => super.copyWith((message) => updates(message as GetEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEmailRequest create() => GetEmailRequest._();
  GetEmailRequest createEmptyInstance() => create();
  static $pb.PbList<GetEmailRequest> createRepeated() => $pb.PbList<GetEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmailRequest>(create);
  static GetEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailId => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailId() => clearField(1);
}

class ListEmailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListEmailsRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, 'labels', entryClassName: 'ListEmailsRequest.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..aOS(2, 'pageToken')
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'query')
    ..hasRequiredFields = false
  ;

  ListEmailsRequest._() : super();
  factory ListEmailsRequest() => create();
  factory ListEmailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEmailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListEmailsRequest clone() => ListEmailsRequest()..mergeFromMessage(this);
  ListEmailsRequest copyWith(void Function(ListEmailsRequest) updates) => super.copyWith((message) => updates(message as ListEmailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListEmailsRequest create() => ListEmailsRequest._();
  ListEmailsRequest createEmptyInstance() => create();
  static $pb.PbList<ListEmailsRequest> createRepeated() => $pb.PbList<ListEmailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEmailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEmailsRequest>(create);
  static ListEmailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get labels => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get query => $_getSZ(3);
  @$pb.TagNumber(4)
  set query($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuery() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuery() => clearField(4);
}

class ModifyEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ModifyEmailRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailId')
    ..m<$core.String, $core.String>(2, 'labels', entryClassName: 'ModifyEmailRequest.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..hasRequiredFields = false
  ;

  ModifyEmailRequest._() : super();
  factory ModifyEmailRequest() => create();
  factory ModifyEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ModifyEmailRequest clone() => ModifyEmailRequest()..mergeFromMessage(this);
  ModifyEmailRequest copyWith(void Function(ModifyEmailRequest) updates) => super.copyWith((message) => updates(message as ModifyEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyEmailRequest create() => ModifyEmailRequest._();
  ModifyEmailRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyEmailRequest> createRepeated() => $pb.PbList<ModifyEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyEmailRequest>(create);
  static ModifyEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailId => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get labels => $_getMap(1);
}

class TrashEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TrashEmailRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailId')
    ..hasRequiredFields = false
  ;

  TrashEmailRequest._() : super();
  factory TrashEmailRequest() => create();
  factory TrashEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrashEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TrashEmailRequest clone() => TrashEmailRequest()..mergeFromMessage(this);
  TrashEmailRequest copyWith(void Function(TrashEmailRequest) updates) => super.copyWith((message) => updates(message as TrashEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrashEmailRequest create() => TrashEmailRequest._();
  TrashEmailRequest createEmptyInstance() => create();
  static $pb.PbList<TrashEmailRequest> createRepeated() => $pb.PbList<TrashEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static TrashEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrashEmailRequest>(create);
  static TrashEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailId => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailId() => clearField(1);
}

class UntrashEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UntrashEmailRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'emailId')
    ..hasRequiredFields = false
  ;

  UntrashEmailRequest._() : super();
  factory UntrashEmailRequest() => create();
  factory UntrashEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UntrashEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UntrashEmailRequest clone() => UntrashEmailRequest()..mergeFromMessage(this);
  UntrashEmailRequest copyWith(void Function(UntrashEmailRequest) updates) => super.copyWith((message) => updates(message as UntrashEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UntrashEmailRequest create() => UntrashEmailRequest._();
  UntrashEmailRequest createEmptyInstance() => create();
  static $pb.PbList<UntrashEmailRequest> createRepeated() => $pb.PbList<UntrashEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static UntrashEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UntrashEmailRequest>(create);
  static UntrashEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emailId => $_getSZ(0);
  @$pb.TagNumber(1)
  set emailId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmailId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmailId() => clearField(1);
}

class SendEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendEmailRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Email>(1, 'email', subBuilder: Email.create)
    ..hasRequiredFields = false
  ;

  SendEmailRequest._() : super();
  factory SendEmailRequest() => create();
  factory SendEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendEmailRequest clone() => SendEmailRequest()..mergeFromMessage(this);
  SendEmailRequest copyWith(void Function(SendEmailRequest) updates) => super.copyWith((message) => updates(message as SendEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendEmailRequest create() => SendEmailRequest._();
  SendEmailRequest createEmptyInstance() => create();
  static $pb.PbList<SendEmailRequest> createRepeated() => $pb.PbList<SendEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static SendEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendEmailRequest>(create);
  static SendEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  Email get email => $_getN(0);
  @$pb.TagNumber(1)
  set email(Email v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
  @$pb.TagNumber(1)
  Email ensureEmail() => $_ensure(0);
}

class ListEmailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListEmailsResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Email>(1, 'email', $pb.PbFieldType.PM, subBuilder: Email.create)
    ..aOS(2, 'nextPageToken')
    ..a<$core.int>(3, 'totalSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ListEmailsResponse._() : super();
  factory ListEmailsResponse() => create();
  factory ListEmailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEmailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListEmailsResponse clone() => ListEmailsResponse()..mergeFromMessage(this);
  ListEmailsResponse copyWith(void Function(ListEmailsResponse) updates) => super.copyWith((message) => updates(message as ListEmailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListEmailsResponse create() => ListEmailsResponse._();
  ListEmailsResponse createEmptyInstance() => create();
  static $pb.PbList<ListEmailsResponse> createRepeated() => $pb.PbList<ListEmailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListEmailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEmailsResponse>(create);
  static ListEmailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Email> get email => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);
}

class GetThreadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetThreadRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'threadId')
    ..hasRequiredFields = false
  ;

  GetThreadRequest._() : super();
  factory GetThreadRequest() => create();
  factory GetThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetThreadRequest clone() => GetThreadRequest()..mergeFromMessage(this);
  GetThreadRequest copyWith(void Function(GetThreadRequest) updates) => super.copyWith((message) => updates(message as GetThreadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetThreadRequest create() => GetThreadRequest._();
  GetThreadRequest createEmptyInstance() => create();
  static $pb.PbList<GetThreadRequest> createRepeated() => $pb.PbList<GetThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static GetThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetThreadRequest>(create);
  static GetThreadRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);
}

class ListThreadsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListThreadsRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, 'labels', entryClassName: 'ListThreadsRequest.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..aOS(2, 'pageToken')
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.OU3)
    ..aOS(4, 'query')
    ..hasRequiredFields = false
  ;

  ListThreadsRequest._() : super();
  factory ListThreadsRequest() => create();
  factory ListThreadsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListThreadsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListThreadsRequest clone() => ListThreadsRequest()..mergeFromMessage(this);
  ListThreadsRequest copyWith(void Function(ListThreadsRequest) updates) => super.copyWith((message) => updates(message as ListThreadsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListThreadsRequest create() => ListThreadsRequest._();
  ListThreadsRequest createEmptyInstance() => create();
  static $pb.PbList<ListThreadsRequest> createRepeated() => $pb.PbList<ListThreadsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListThreadsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListThreadsRequest>(create);
  static ListThreadsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get labels => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get query => $_getSZ(3);
  @$pb.TagNumber(4)
  set query($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuery() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuery() => clearField(4);
}

class ModifyThreadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ModifyThreadRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'threadId')
    ..m<$core.String, $core.String>(2, 'labels', entryClassName: 'ModifyThreadRequest.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..hasRequiredFields = false
  ;

  ModifyThreadRequest._() : super();
  factory ModifyThreadRequest() => create();
  factory ModifyThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ModifyThreadRequest clone() => ModifyThreadRequest()..mergeFromMessage(this);
  ModifyThreadRequest copyWith(void Function(ModifyThreadRequest) updates) => super.copyWith((message) => updates(message as ModifyThreadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyThreadRequest create() => ModifyThreadRequest._();
  ModifyThreadRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyThreadRequest> createRepeated() => $pb.PbList<ModifyThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyThreadRequest>(create);
  static ModifyThreadRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get labels => $_getMap(1);
}

class TrashThreadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TrashThreadRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'threadId')
    ..hasRequiredFields = false
  ;

  TrashThreadRequest._() : super();
  factory TrashThreadRequest() => create();
  factory TrashThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrashThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TrashThreadRequest clone() => TrashThreadRequest()..mergeFromMessage(this);
  TrashThreadRequest copyWith(void Function(TrashThreadRequest) updates) => super.copyWith((message) => updates(message as TrashThreadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrashThreadRequest create() => TrashThreadRequest._();
  TrashThreadRequest createEmptyInstance() => create();
  static $pb.PbList<TrashThreadRequest> createRepeated() => $pb.PbList<TrashThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static TrashThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrashThreadRequest>(create);
  static TrashThreadRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);
}

class UntrashThreadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UntrashThreadRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'threadId')
    ..hasRequiredFields = false
  ;

  UntrashThreadRequest._() : super();
  factory UntrashThreadRequest() => create();
  factory UntrashThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UntrashThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UntrashThreadRequest clone() => UntrashThreadRequest()..mergeFromMessage(this);
  UntrashThreadRequest copyWith(void Function(UntrashThreadRequest) updates) => super.copyWith((message) => updates(message as UntrashThreadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UntrashThreadRequest create() => UntrashThreadRequest._();
  UntrashThreadRequest createEmptyInstance() => create();
  static $pb.PbList<UntrashThreadRequest> createRepeated() => $pb.PbList<UntrashThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static UntrashThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UntrashThreadRequest>(create);
  static UntrashThreadRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get threadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);
}

class SendThreadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendThreadRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Thread>(1, 'thread', subBuilder: Thread.create)
    ..hasRequiredFields = false
  ;

  SendThreadRequest._() : super();
  factory SendThreadRequest() => create();
  factory SendThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendThreadRequest clone() => SendThreadRequest()..mergeFromMessage(this);
  SendThreadRequest copyWith(void Function(SendThreadRequest) updates) => super.copyWith((message) => updates(message as SendThreadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendThreadRequest create() => SendThreadRequest._();
  SendThreadRequest createEmptyInstance() => create();
  static $pb.PbList<SendThreadRequest> createRepeated() => $pb.PbList<SendThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static SendThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendThreadRequest>(create);
  static SendThreadRequest _defaultInstance;

  @$pb.TagNumber(1)
  Thread get thread => $_getN(0);
  @$pb.TagNumber(1)
  set thread(Thread v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasThread() => $_has(0);
  @$pb.TagNumber(1)
  void clearThread() => clearField(1);
  @$pb.TagNumber(1)
  Thread ensureThread() => $_ensure(0);
}

class ListThreadsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListThreadsResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Thread>(1, 'thread', $pb.PbFieldType.PM, subBuilder: Thread.create)
    ..aOS(2, 'nextPageToken')
    ..a<$core.int>(3, 'totalSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ListThreadsResponse._() : super();
  factory ListThreadsResponse() => create();
  factory ListThreadsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListThreadsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListThreadsResponse clone() => ListThreadsResponse()..mergeFromMessage(this);
  ListThreadsResponse copyWith(void Function(ListThreadsResponse) updates) => super.copyWith((message) => updates(message as ListThreadsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListThreadsResponse create() => ListThreadsResponse._();
  ListThreadsResponse createEmptyInstance() => create();
  static $pb.PbList<ListThreadsResponse> createRepeated() => $pb.PbList<ListThreadsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListThreadsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListThreadsResponse>(create);
  static ListThreadsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Thread> get thread => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);
}

class StreamStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamStateRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, 'labels', entryClassName: 'StreamStateRequest.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('service'))
    ..aOS(2, 'query')
    ..hasRequiredFields = false
  ;

  StreamStateRequest._() : super();
  factory StreamStateRequest() => create();
  factory StreamStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StreamStateRequest clone() => StreamStateRequest()..mergeFromMessage(this);
  StreamStateRequest copyWith(void Function(StreamStateRequest) updates) => super.copyWith((message) => updates(message as StreamStateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamStateRequest create() => StreamStateRequest._();
  StreamStateRequest createEmptyInstance() => create();
  static $pb.PbList<StreamStateRequest> createRepeated() => $pb.PbList<StreamStateRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamStateRequest>(create);
  static StreamStateRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get labels => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get query => $_getSZ(1);
  @$pb.TagNumber(2)
  set query($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuery() => clearField(2);
}

class StreamingStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamingStateResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Any>(1, 'data', subBuilder: $3.Any.create)
    ..aOM<$4.Status>(2, 'status', subBuilder: $4.Status.create)
    ..hasRequiredFields = false
  ;

  StreamingStateResponse._() : super();
  factory StreamingStateResponse() => create();
  factory StreamingStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StreamingStateResponse clone() => StreamingStateResponse()..mergeFromMessage(this);
  StreamingStateResponse copyWith(void Function(StreamingStateResponse) updates) => super.copyWith((message) => updates(message as StreamingStateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingStateResponse create() => StreamingStateResponse._();
  StreamingStateResponse createEmptyInstance() => create();
  static $pb.PbList<StreamingStateResponse> createRepeated() => $pb.PbList<StreamingStateResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamingStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingStateResponse>(create);
  static StreamingStateResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.Any get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($3.Any v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  $3.Any ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($4.Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  $4.Status ensureStatus() => $_ensure(1);
}

class ListHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListHistoryRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..e<HistoryTypes>(1, 'historyTypes', $pb.PbFieldType.OE, defaultOrMaker: HistoryTypes.LABEL_ADDED, valueOf: HistoryTypes.valueOf, enumValues: HistoryTypes.values)
    ..aOS(2, 'labelId')
    ..aOS(3, 'pageToken')
    ..a<$core.int>(4, 'pageSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'startHistoryId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ListHistoryRequest._() : super();
  factory ListHistoryRequest() => create();
  factory ListHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListHistoryRequest clone() => ListHistoryRequest()..mergeFromMessage(this);
  ListHistoryRequest copyWith(void Function(ListHistoryRequest) updates) => super.copyWith((message) => updates(message as ListHistoryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHistoryRequest create() => ListHistoryRequest._();
  ListHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<ListHistoryRequest> createRepeated() => $pb.PbList<ListHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static ListHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHistoryRequest>(create);
  static ListHistoryRequest _defaultInstance;

  @$pb.TagNumber(1)
  HistoryTypes get historyTypes => $_getN(0);
  @$pb.TagNumber(1)
  set historyTypes(HistoryTypes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHistoryTypes() => $_has(0);
  @$pb.TagNumber(1)
  void clearHistoryTypes() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get labelId => $_getSZ(1);
  @$pb.TagNumber(2)
  set labelId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get startHistoryId => $_getIZ(4);
  @$pb.TagNumber(5)
  set startHistoryId($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartHistoryId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartHistoryId() => clearField(5);
}

class ListHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListHistoryResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<History>(1, 'history', $pb.PbFieldType.PM, subBuilder: History.create)
    ..aOS(2, 'nextPageToken')
    ..a<$core.int>(3, 'historyId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ListHistoryResponse._() : super();
  factory ListHistoryResponse() => create();
  factory ListHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListHistoryResponse clone() => ListHistoryResponse()..mergeFromMessage(this);
  ListHistoryResponse copyWith(void Function(ListHistoryResponse) updates) => super.copyWith((message) => updates(message as ListHistoryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHistoryResponse create() => ListHistoryResponse._();
  ListHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<ListHistoryResponse> createRepeated() => $pb.PbList<ListHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHistoryResponse>(create);
  static ListHistoryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<History> get history => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get historyId => $_getIZ(2);
  @$pb.TagNumber(3)
  set historyId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHistoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearHistoryId() => clearField(3);
}

class GetLabelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetLabelRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'LabelId', protoName: 'Label_id')
    ..hasRequiredFields = false
  ;

  GetLabelRequest._() : super();
  factory GetLabelRequest() => create();
  factory GetLabelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLabelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetLabelRequest clone() => GetLabelRequest()..mergeFromMessage(this);
  GetLabelRequest copyWith(void Function(GetLabelRequest) updates) => super.copyWith((message) => updates(message as GetLabelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLabelRequest create() => GetLabelRequest._();
  GetLabelRequest createEmptyInstance() => create();
  static $pb.PbList<GetLabelRequest> createRepeated() => $pb.PbList<GetLabelRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLabelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLabelRequest>(create);
  static GetLabelRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get labelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set labelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelId() => clearField(1);
}

class CreateLabelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateLabelRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Label>(1, 'Label', protoName: 'Label', subBuilder: Label.create)
    ..hasRequiredFields = false
  ;

  CreateLabelRequest._() : super();
  factory CreateLabelRequest() => create();
  factory CreateLabelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateLabelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateLabelRequest clone() => CreateLabelRequest()..mergeFromMessage(this);
  CreateLabelRequest copyWith(void Function(CreateLabelRequest) updates) => super.copyWith((message) => updates(message as CreateLabelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateLabelRequest create() => CreateLabelRequest._();
  CreateLabelRequest createEmptyInstance() => create();
  static $pb.PbList<CreateLabelRequest> createRepeated() => $pb.PbList<CreateLabelRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateLabelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateLabelRequest>(create);
  static CreateLabelRequest _defaultInstance;

  @$pb.TagNumber(1)
  Label get label => $_getN(0);
  @$pb.TagNumber(1)
  set label(Label v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);
  @$pb.TagNumber(1)
  Label ensureLabel() => $_ensure(0);
}

class UpdateLabelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateLabelRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Label>(1, 'Label', protoName: 'Label', subBuilder: Label.create)
    ..hasRequiredFields = false
  ;

  UpdateLabelRequest._() : super();
  factory UpdateLabelRequest() => create();
  factory UpdateLabelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLabelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateLabelRequest clone() => UpdateLabelRequest()..mergeFromMessage(this);
  UpdateLabelRequest copyWith(void Function(UpdateLabelRequest) updates) => super.copyWith((message) => updates(message as UpdateLabelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLabelRequest create() => UpdateLabelRequest._();
  UpdateLabelRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateLabelRequest> createRepeated() => $pb.PbList<UpdateLabelRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateLabelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLabelRequest>(create);
  static UpdateLabelRequest _defaultInstance;

  @$pb.TagNumber(1)
  Label get label => $_getN(0);
  @$pb.TagNumber(1)
  set label(Label v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);
  @$pb.TagNumber(1)
  Label ensureLabel() => $_ensure(0);
}

class DeleteLabelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteLabelRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'LabelId', protoName: 'Label_id')
    ..hasRequiredFields = false
  ;

  DeleteLabelRequest._() : super();
  factory DeleteLabelRequest() => create();
  factory DeleteLabelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLabelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteLabelRequest clone() => DeleteLabelRequest()..mergeFromMessage(this);
  DeleteLabelRequest copyWith(void Function(DeleteLabelRequest) updates) => super.copyWith((message) => updates(message as DeleteLabelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteLabelRequest create() => DeleteLabelRequest._();
  DeleteLabelRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteLabelRequest> createRepeated() => $pb.PbList<DeleteLabelRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteLabelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteLabelRequest>(create);
  static DeleteLabelRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get labelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set labelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelId() => clearField(1);
}

class SendLabelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendLabelRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Label>(1, 'Label', protoName: 'Label', subBuilder: Label.create)
    ..hasRequiredFields = false
  ;

  SendLabelRequest._() : super();
  factory SendLabelRequest() => create();
  factory SendLabelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendLabelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendLabelRequest clone() => SendLabelRequest()..mergeFromMessage(this);
  SendLabelRequest copyWith(void Function(SendLabelRequest) updates) => super.copyWith((message) => updates(message as SendLabelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendLabelRequest create() => SendLabelRequest._();
  SendLabelRequest createEmptyInstance() => create();
  static $pb.PbList<SendLabelRequest> createRepeated() => $pb.PbList<SendLabelRequest>();
  @$core.pragma('dart2js:noInline')
  static SendLabelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendLabelRequest>(create);
  static SendLabelRequest _defaultInstance;

  @$pb.TagNumber(1)
  Label get label => $_getN(0);
  @$pb.TagNumber(1)
  set label(Label v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);
  @$pb.TagNumber(1)
  Label ensureLabel() => $_ensure(0);
}

class GetProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetProfileResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  GetProfileResponse._() : super();
  factory GetProfileResponse() => create();
  factory GetProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetProfileResponse clone() => GetProfileResponse()..mergeFromMessage(this);
  GetProfileResponse copyWith(void Function(GetProfileResponse) updates) => super.copyWith((message) => updates(message as GetProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProfileResponse create() => GetProfileResponse._();
  GetProfileResponse createEmptyInstance() => create();
  static $pb.PbList<GetProfileResponse> createRepeated() => $pb.PbList<GetProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProfileResponse>(create);
  static GetProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureProfile() => $_ensure(0);
}

class ListLabelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListLabelsResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Label>(1, 'Label', $pb.PbFieldType.PM, protoName: 'Label', subBuilder: Label.create)
    ..hasRequiredFields = false
  ;

  ListLabelsResponse._() : super();
  factory ListLabelsResponse() => create();
  factory ListLabelsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLabelsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListLabelsResponse clone() => ListLabelsResponse()..mergeFromMessage(this);
  ListLabelsResponse copyWith(void Function(ListLabelsResponse) updates) => super.copyWith((message) => updates(message as ListLabelsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLabelsResponse create() => ListLabelsResponse._();
  ListLabelsResponse createEmptyInstance() => create();
  static $pb.PbList<ListLabelsResponse> createRepeated() => $pb.PbList<ListLabelsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListLabelsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLabelsResponse>(create);
  static ListLabelsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Label> get label => $_getList(0);
}

