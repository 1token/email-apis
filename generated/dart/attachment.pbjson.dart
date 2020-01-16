///
//  Generated code. Do not modify.
//  source: attachment.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AttachmentMetadata$json = const {
  '1': 'AttachmentMetadata',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    const {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'mimetype', '3': 4, '4': 1, '5': 9, '10': 'mimetype'},
  ],
};

const GetAttachmentMetadataRequest$json = const {
  '1': 'GetAttachmentMetadataRequest',
  '2': const [
    const {'1': 'attachment_metadata_id', '3': 1, '4': 1, '5': 9, '10': 'attachmentMetadataId'},
    const {'1': 'email_id', '3': 2, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

const ListAttachmentsMetadataRequest$json = const {
  '1': 'ListAttachmentsMetadataRequest',
  '2': const [
    const {'1': 'email_id', '3': 1, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

const ListAttachmentsMetadataResponse$json = const {
  '1': 'ListAttachmentsMetadataResponse',
  '2': const [
    const {'1': 'attachment_metadata', '3': 1, '4': 3, '5': 11, '6': '.attachment.AttachmentMetadata', '10': 'attachmentMetadata'},
  ],
};

const DeleteAttachmentRequest$json = const {
  '1': 'DeleteAttachmentRequest',
  '2': const [
    const {'1': 'attachment_metadata_id', '3': 1, '4': 1, '5': 9, '10': 'attachmentMetadataId'},
    const {'1': 'email_id', '3': 2, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

const DeleteAllAttachmentRequest$json = const {
  '1': 'DeleteAllAttachmentRequest',
  '2': const [
    const {'1': 'email_id', '3': 1, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

