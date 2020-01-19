///
//  Generated code. Do not modify.
//  source: email.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const HistoryTypes$json = const {
  '1': 'HistoryTypes',
  '2': const [
    const {'1': 'LABEL_ADDED', '2': 0},
    const {'1': 'LABEL_REMOVED', '2': 1},
    const {'1': 'MESSAGE_ADDED', '2': 2},
    const {'1': 'MESSAGE_DELETED', '2': 3},
  ],
};

const Sender$json = const {
  '1': 'Sender',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email_address', '3': 2, '4': 1, '5': 9, '10': 'emailAddress'},
    const {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

const Recipient$json = const {
  '1': 'Recipient',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email_address', '3': 2, '4': 1, '5': 9, '10': 'emailAddress'},
    const {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

const Draft$json = const {
  '1': 'Draft',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'snipped', '3': 2, '4': 1, '5': 9, '10': 'snipped'},
    const {'1': 'envelope', '3': 3, '4': 1, '5': 11, '6': '.service.Envelope', '10': 'envelope'},
    const {'1': 'labels', '3': 4, '4': 3, '5': 11, '6': '.service.Draft.LabelsEntry', '10': 'labels'},
  ],
  '3': const [Draft_LabelsEntry$json],
};

const Draft_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Email$json = const {
  '1': 'Email',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'snipped', '3': 2, '4': 1, '5': 9, '10': 'snipped'},
    const {'1': 'history_id', '3': 3, '4': 1, '5': 9, '10': 'historyId'},
    const {'1': 'envelope', '3': 4, '4': 1, '5': 11, '6': '.service.Envelope', '10': 'envelope'},
    const {'1': 'sent_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'received_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
    const {'1': 'snoozed_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'snoozedAt'},
    const {'1': 'fwd', '3': 8, '4': 1, '5': 8, '10': 'fwd'},
    const {'1': 'labels', '3': 9, '4': 3, '5': 11, '6': '.service.Email.LabelsEntry', '10': 'labels'},
  ],
  '3': const [Email_LabelsEntry$json],
};

const Email_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Thread$json = const {
  '1': 'Thread',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'snipped', '3': 2, '4': 1, '5': 9, '10': 'snipped'},
    const {'1': 'history_id', '3': 3, '4': 1, '5': 9, '10': 'historyId'},
    const {'1': 'email', '3': 4, '4': 3, '5': 11, '6': '.service.Email', '10': 'email'},
  ],
};

const Envelope$json = const {
  '1': 'Envelope',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'from', '3': 2, '4': 1, '5': 11, '6': '.service.Sender', '10': 'from'},
    const {'1': 'to', '3': 3, '4': 3, '5': 11, '6': '.service.Recipient', '10': 'to'},
    const {'1': 'cc', '3': 4, '4': 3, '5': 11, '6': '.service.Recipient', '10': 'cc'},
    const {'1': 'bcc', '3': 5, '4': 3, '5': 11, '6': '.service.Recipient', '10': 'bcc'},
    const {'1': 'groups', '3': 6, '4': 3, '5': 11, '6': '.service.Recipient', '10': 'groups'},
    const {'1': 'tags', '3': 7, '4': 3, '5': 11, '6': '.service.Envelope.TagsEntry', '10': 'tags'},
    const {'1': 'message', '3': 8, '4': 1, '5': 11, '6': '.service.Message', '10': 'message'},
    const {'1': 'attachments', '3': 9, '4': 3, '5': 11, '6': '.service.Attachment', '10': 'attachments'},
  ],
  '3': const [Envelope_TagsEntry$json],
};

const Envelope_TagsEntry$json = const {
  '1': 'TagsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'subject', '3': 2, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'mimetype', '3': 3, '4': 1, '5': 9, '10': 'mimetype'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'data'},
    const {'1': 'uri', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'uri'},
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

const Attachment$json = const {
  '1': 'Attachment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'mimetype', '3': 3, '4': 1, '5': 9, '10': 'mimetype'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'data'},
    const {'1': 'uri', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'uri'},
  ],
  '8': const [
    const {'1': 'content'},
  ],
};

const Label$json = const {
  '1': 'Label',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
  ],
};

const HistoryLabelAdded$json = const {
  '1': 'HistoryLabelAdded',
  '2': const [
    const {'1': 'label_ids', '3': 1, '4': 3, '5': 9, '10': 'labelIds'},
    const {'1': 'email', '3': 2, '4': 1, '5': 11, '6': '.service.Email', '10': 'email'},
  ],
};

const HistoryLabelRemoved$json = const {
  '1': 'HistoryLabelRemoved',
  '2': const [
    const {'1': 'label_ids', '3': 1, '4': 3, '5': 9, '10': 'labelIds'},
    const {'1': 'email', '3': 2, '4': 1, '5': 11, '6': '.service.Email', '10': 'email'},
  ],
};

const HistoryEmailAdded$json = const {
  '1': 'HistoryEmailAdded',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 11, '6': '.service.Email', '10': 'email'},
  ],
};

const HistoryEmailDeleted$json = const {
  '1': 'HistoryEmailDeleted',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 11, '6': '.service.Email', '10': 'email'},
  ],
};

const History$json = const {
  '1': 'History',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'emails', '3': 2, '4': 3, '5': 11, '6': '.service.Email', '10': 'emails'},
    const {'1': 'label_added', '3': 3, '4': 3, '5': 11, '6': '.service.HistoryLabelAdded', '10': 'labelAdded'},
    const {'1': 'label_removed', '3': 4, '4': 3, '5': 11, '6': '.service.HistoryLabelRemoved', '10': 'labelRemoved'},
    const {'1': 'email_added', '3': 5, '4': 3, '5': 11, '6': '.service.HistoryEmailAdded', '10': 'emailAdded'},
    const {'1': 'email_deleted', '3': 6, '4': 3, '5': 11, '6': '.service.HistoryEmailDeleted', '10': 'emailDeleted'},
  ],
};

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'emailAddress', '3': 1, '4': 1, '5': 9, '10': 'emailAddress'},
    const {'1': 'history_id', '3': 2, '4': 1, '5': 9, '10': 'historyId'},
    const {'1': 'emails_total', '3': 3, '4': 1, '5': 5, '10': 'emailsTotal'},
    const {'1': 'threads_total', '3': 4, '4': 1, '5': 5, '10': 'threadsTotal'},
  ],
};

const GetDraftRequest$json = const {
  '1': 'GetDraftRequest',
  '2': const [
    const {'1': 'draft_id', '3': 1, '4': 1, '5': 9, '10': 'draftId'},
  ],
};

const ListDraftsRequest$json = const {
  '1': 'ListDraftsRequest',
  '2': const [
    const {'1': 'page_token', '3': 1, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'query', '3': 3, '4': 1, '5': 9, '10': 'query'},
  ],
};

const CreateDraftRequest$json = const {
  '1': 'CreateDraftRequest',
  '2': const [
    const {'1': 'draft', '3': 1, '4': 1, '5': 11, '6': '.service.Draft', '10': 'draft'},
  ],
};

const UpdateDraftRequest$json = const {
  '1': 'UpdateDraftRequest',
  '2': const [
    const {'1': 'draft', '3': 1, '4': 1, '5': 11, '6': '.service.Draft', '10': 'draft'},
  ],
};

const DeleteDraftRequest$json = const {
  '1': 'DeleteDraftRequest',
  '2': const [
    const {'1': 'draft_id', '3': 1, '4': 1, '5': 9, '10': 'draftId'},
  ],
};

const SendDraftRequest$json = const {
  '1': 'SendDraftRequest',
  '2': const [
    const {'1': 'draft', '3': 1, '4': 1, '5': 11, '6': '.service.Draft', '10': 'draft'},
  ],
};

const ListDraftsResponse$json = const {
  '1': 'ListDraftsResponse',
  '2': const [
    const {'1': 'draft', '3': 1, '4': 3, '5': 11, '6': '.service.Draft', '10': 'draft'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'total_size', '3': 3, '4': 1, '5': 13, '10': 'totalSize'},
  ],
};

const GetEmailRequest$json = const {
  '1': 'GetEmailRequest',
  '2': const [
    const {'1': 'email_id', '3': 1, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

const ListEmailsRequest$json = const {
  '1': 'ListEmailsRequest',
  '2': const [
    const {'1': 'labels', '3': 1, '4': 3, '5': 11, '6': '.service.ListEmailsRequest.LabelsEntry', '10': 'labels'},
    const {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'query', '3': 4, '4': 1, '5': 9, '10': 'query'},
  ],
  '3': const [ListEmailsRequest_LabelsEntry$json],
};

const ListEmailsRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const ModifyEmailRequest$json = const {
  '1': 'ModifyEmailRequest',
  '2': const [
    const {'1': 'email_id', '3': 1, '4': 1, '5': 9, '10': 'emailId'},
    const {'1': 'labels', '3': 2, '4': 3, '5': 11, '6': '.service.ModifyEmailRequest.LabelsEntry', '10': 'labels'},
  ],
  '3': const [ModifyEmailRequest_LabelsEntry$json],
};

const ModifyEmailRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const TrashEmailRequest$json = const {
  '1': 'TrashEmailRequest',
  '2': const [
    const {'1': 'email_id', '3': 1, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

const UntrashEmailRequest$json = const {
  '1': 'UntrashEmailRequest',
  '2': const [
    const {'1': 'email_id', '3': 1, '4': 1, '5': 9, '10': 'emailId'},
  ],
};

const SendEmailRequest$json = const {
  '1': 'SendEmailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 11, '6': '.service.Email', '10': 'email'},
  ],
};

const ListEmailsResponse$json = const {
  '1': 'ListEmailsResponse',
  '2': const [
    const {'1': 'email', '3': 1, '4': 3, '5': 11, '6': '.service.Email', '10': 'email'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'total_size', '3': 3, '4': 1, '5': 13, '10': 'totalSize'},
  ],
};

const GetThreadRequest$json = const {
  '1': 'GetThreadRequest',
  '2': const [
    const {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
  ],
};

const ListThreadsRequest$json = const {
  '1': 'ListThreadsRequest',
  '2': const [
    const {'1': 'labels', '3': 1, '4': 3, '5': 11, '6': '.service.ListThreadsRequest.LabelsEntry', '10': 'labels'},
    const {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'query', '3': 4, '4': 1, '5': 9, '10': 'query'},
  ],
  '3': const [ListThreadsRequest_LabelsEntry$json],
};

const ListThreadsRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const ModifyThreadRequest$json = const {
  '1': 'ModifyThreadRequest',
  '2': const [
    const {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
    const {'1': 'labels', '3': 2, '4': 3, '5': 11, '6': '.service.ModifyThreadRequest.LabelsEntry', '10': 'labels'},
  ],
  '3': const [ModifyThreadRequest_LabelsEntry$json],
};

const ModifyThreadRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const TrashThreadRequest$json = const {
  '1': 'TrashThreadRequest',
  '2': const [
    const {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
  ],
};

const UntrashThreadRequest$json = const {
  '1': 'UntrashThreadRequest',
  '2': const [
    const {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
  ],
};

const SendThreadRequest$json = const {
  '1': 'SendThreadRequest',
  '2': const [
    const {'1': 'thread', '3': 1, '4': 1, '5': 11, '6': '.service.Thread', '10': 'thread'},
  ],
};

const ListThreadsResponse$json = const {
  '1': 'ListThreadsResponse',
  '2': const [
    const {'1': 'thread', '3': 1, '4': 3, '5': 11, '6': '.service.Thread', '10': 'thread'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'total_size', '3': 3, '4': 1, '5': 13, '10': 'totalSize'},
  ],
};

const StreamStateRequest$json = const {
  '1': 'StreamStateRequest',
  '2': const [
    const {'1': 'labels', '3': 1, '4': 3, '5': 11, '6': '.service.StreamStateRequest.LabelsEntry', '10': 'labels'},
    const {'1': 'query', '3': 2, '4': 1, '5': 9, '10': 'query'},
  ],
  '3': const [StreamStateRequest_LabelsEntry$json],
};

const StreamStateRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const StreamingStateResponse$json = const {
  '1': 'StreamingStateResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'data'},
    const {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.google.rpc.Status', '10': 'status'},
  ],
};

const ListHistoryRequest$json = const {
  '1': 'ListHistoryRequest',
  '2': const [
    const {'1': 'history_types', '3': 1, '4': 1, '5': 14, '6': '.service.HistoryTypes', '10': 'historyTypes'},
    const {'1': 'label_id', '3': 2, '4': 1, '5': 9, '10': 'labelId'},
    const {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'page_size', '3': 4, '4': 1, '5': 13, '10': 'pageSize'},
    const {'1': 'start_history_id', '3': 5, '4': 1, '5': 13, '10': 'startHistoryId'},
  ],
};

const ListHistoryResponse$json = const {
  '1': 'ListHistoryResponse',
  '2': const [
    const {'1': 'history', '3': 1, '4': 3, '5': 11, '6': '.service.History', '10': 'history'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'history_id', '3': 3, '4': 1, '5': 13, '10': 'historyId'},
  ],
};

const GetLabelRequest$json = const {
  '1': 'GetLabelRequest',
  '2': const [
    const {'1': 'Label_id', '3': 1, '4': 1, '5': 9, '10': 'LabelId'},
  ],
};

const CreateLabelRequest$json = const {
  '1': 'CreateLabelRequest',
  '2': const [
    const {'1': 'Label', '3': 1, '4': 1, '5': 11, '6': '.service.Label', '10': 'Label'},
  ],
};

const UpdateLabelRequest$json = const {
  '1': 'UpdateLabelRequest',
  '2': const [
    const {'1': 'Label', '3': 1, '4': 1, '5': 11, '6': '.service.Label', '10': 'Label'},
  ],
};

const DeleteLabelRequest$json = const {
  '1': 'DeleteLabelRequest',
  '2': const [
    const {'1': 'Label_id', '3': 1, '4': 1, '5': 9, '10': 'LabelId'},
  ],
};

const SendLabelRequest$json = const {
  '1': 'SendLabelRequest',
  '2': const [
    const {'1': 'Label', '3': 1, '4': 1, '5': 11, '6': '.service.Label', '10': 'Label'},
  ],
};

const GetProfileResponse$json = const {
  '1': 'GetProfileResponse',
  '2': const [
    const {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.service.Profile', '10': 'profile'},
  ],
};

const ListLabelsResponse$json = const {
  '1': 'ListLabelsResponse',
  '2': const [
    const {'1': 'Label', '3': 1, '4': 3, '5': 11, '6': '.service.Label', '10': 'Label'},
  ],
};

