///
//  Generated code. Do not modify.
//  source: email.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class HistoryTypes extends $pb.ProtobufEnum {
  static const HistoryTypes LABEL_ADDED = HistoryTypes._(0, 'LABEL_ADDED');
  static const HistoryTypes LABEL_REMOVED = HistoryTypes._(1, 'LABEL_REMOVED');
  static const HistoryTypes MESSAGE_ADDED = HistoryTypes._(2, 'MESSAGE_ADDED');
  static const HistoryTypes MESSAGE_DELETED = HistoryTypes._(3, 'MESSAGE_DELETED');

  static const $core.List<HistoryTypes> values = <HistoryTypes> [
    LABEL_ADDED,
    LABEL_REMOVED,
    MESSAGE_ADDED,
    MESSAGE_DELETED,
  ];

  static final $core.Map<$core.int, HistoryTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HistoryTypes valueOf($core.int value) => _byValue[value];

  const HistoryTypes._($core.int v, $core.String n) : super(v, n);
}

