///
//  Generated code. Do not modify.
//  source: email.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'email.pb.dart' as $1;
export 'email.pb.dart';

class MailboxServiceClient extends $grpc.Client {
  static final _$getProfile =
      $grpc.ClientMethod<$0.Empty, $1.GetProfileResponse>(
          '/email.MailboxService/GetProfile',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetProfileResponse.fromBuffer(value));
  static final _$listHistory =
      $grpc.ClientMethod<$1.ListHistoryRequest, $1.ListHistoryResponse>(
          '/email.MailboxService/ListHistory',
          ($1.ListHistoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListHistoryResponse.fromBuffer(value));
  static final _$streamState =
      $grpc.ClientMethod<$1.StreamStateRequest, $1.StreamingStateResponse>(
          '/email.MailboxService/StreamState',
          ($1.StreamStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StreamingStateResponse.fromBuffer(value));

  MailboxServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.GetProfileResponse> getProfile($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListHistoryResponse> listHistory(
      $1.ListHistoryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listHistory, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$1.StreamingStateResponse> streamState(
      $1.StreamStateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$streamState, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class MailboxServiceBase extends $grpc.Service {
  $core.String get $name => 'email.MailboxService';

  MailboxServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GetProfileResponse>(
        'GetProfile',
        getProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GetProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListHistoryRequest, $1.ListHistoryResponse>(
            'ListHistory',
            listHistory_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListHistoryRequest.fromBuffer(value),
            ($1.ListHistoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StreamStateRequest, $1.StreamingStateResponse>(
            'StreamState',
            streamState_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $1.StreamStateRequest.fromBuffer(value),
            ($1.StreamingStateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetProfileResponse> getProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getProfile(call, await request);
  }

  $async.Future<$1.ListHistoryResponse> listHistory_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListHistoryRequest> request) async {
    return listHistory(call, await request);
  }

  $async.Stream<$1.StreamingStateResponse> streamState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.StreamStateRequest> request) async* {
    yield* streamState(call, await request);
  }

  $async.Future<$1.GetProfileResponse> getProfile(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.ListHistoryResponse> listHistory(
      $grpc.ServiceCall call, $1.ListHistoryRequest request);
  $async.Stream<$1.StreamingStateResponse> streamState(
      $grpc.ServiceCall call, $1.StreamStateRequest request);
}

class DraftServiceClient extends $grpc.Client {
  static final _$getDraft = $grpc.ClientMethod<$1.GetDraftRequest, $1.Draft>(
      '/email.DraftService/GetDraft',
      ($1.GetDraftRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Draft.fromBuffer(value));
  static final _$listDrafts =
      $grpc.ClientMethod<$1.ListDraftsRequest, $1.ListDraftsResponse>(
          '/email.DraftService/ListDrafts',
          ($1.ListDraftsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListDraftsResponse.fromBuffer(value));
  static final _$createDraft =
      $grpc.ClientMethod<$1.CreateDraftRequest, $1.Draft>(
          '/email.DraftService/CreateDraft',
          ($1.CreateDraftRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Draft.fromBuffer(value));
  static final _$updateDraft =
      $grpc.ClientMethod<$1.UpdateDraftRequest, $1.Draft>(
          '/email.DraftService/UpdateDraft',
          ($1.UpdateDraftRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Draft.fromBuffer(value));
  static final _$deleteDraft =
      $grpc.ClientMethod<$1.DeleteDraftRequest, $0.Empty>(
          '/email.DraftService/DeleteDraft',
          ($1.DeleteDraftRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$sendDraft = $grpc.ClientMethod<$1.SendDraftRequest, $1.Email>(
      '/email.DraftService/SendDraft',
      ($1.SendDraftRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Email.fromBuffer(value));

  DraftServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.Draft> getDraft($1.GetDraftRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getDraft, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListDraftsResponse> listDrafts(
      $1.ListDraftsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listDrafts, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Draft> createDraft($1.CreateDraftRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createDraft, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Draft> updateDraft($1.UpdateDraftRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateDraft, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> deleteDraft($1.DeleteDraftRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteDraft, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Email> sendDraft($1.SendDraftRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendDraft, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class DraftServiceBase extends $grpc.Service {
  $core.String get $name => 'email.DraftService';

  DraftServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetDraftRequest, $1.Draft>(
        'GetDraft',
        getDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetDraftRequest.fromBuffer(value),
        ($1.Draft value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListDraftsRequest, $1.ListDraftsResponse>(
        'ListDrafts',
        listDrafts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListDraftsRequest.fromBuffer(value),
        ($1.ListDraftsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateDraftRequest, $1.Draft>(
        'CreateDraft',
        createDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateDraftRequest.fromBuffer(value),
        ($1.Draft value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateDraftRequest, $1.Draft>(
        'UpdateDraft',
        updateDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateDraftRequest.fromBuffer(value),
        ($1.Draft value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteDraftRequest, $0.Empty>(
        'DeleteDraft',
        deleteDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteDraftRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendDraftRequest, $1.Email>(
        'SendDraft',
        sendDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendDraftRequest.fromBuffer(value),
        ($1.Email value) => value.writeToBuffer()));
  }

  $async.Future<$1.Draft> getDraft_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetDraftRequest> request) async {
    return getDraft(call, await request);
  }

  $async.Future<$1.ListDraftsResponse> listDrafts_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListDraftsRequest> request) async {
    return listDrafts(call, await request);
  }

  $async.Future<$1.Draft> createDraft_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateDraftRequest> request) async {
    return createDraft(call, await request);
  }

  $async.Future<$1.Draft> updateDraft_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateDraftRequest> request) async {
    return updateDraft(call, await request);
  }

  $async.Future<$0.Empty> deleteDraft_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteDraftRequest> request) async {
    return deleteDraft(call, await request);
  }

  $async.Future<$1.Email> sendDraft_Pre($grpc.ServiceCall call,
      $async.Future<$1.SendDraftRequest> request) async {
    return sendDraft(call, await request);
  }

  $async.Future<$1.Draft> getDraft(
      $grpc.ServiceCall call, $1.GetDraftRequest request);
  $async.Future<$1.ListDraftsResponse> listDrafts(
      $grpc.ServiceCall call, $1.ListDraftsRequest request);
  $async.Future<$1.Draft> createDraft(
      $grpc.ServiceCall call, $1.CreateDraftRequest request);
  $async.Future<$1.Draft> updateDraft(
      $grpc.ServiceCall call, $1.UpdateDraftRequest request);
  $async.Future<$0.Empty> deleteDraft(
      $grpc.ServiceCall call, $1.DeleteDraftRequest request);
  $async.Future<$1.Email> sendDraft(
      $grpc.ServiceCall call, $1.SendDraftRequest request);
}

class EmailServiceClient extends $grpc.Client {
  static final _$getEmail = $grpc.ClientMethod<$1.GetEmailRequest, $1.Email>(
      '/email.EmailService/GetEmail',
      ($1.GetEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Email.fromBuffer(value));
  static final _$listEmails =
      $grpc.ClientMethod<$1.ListEmailsRequest, $1.ListEmailsResponse>(
          '/email.EmailService/ListEmails',
          ($1.ListEmailsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListEmailsResponse.fromBuffer(value));
  static final _$modifyEmail =
      $grpc.ClientMethod<$1.ModifyEmailRequest, $1.Email>(
          '/email.EmailService/ModifyEmail',
          ($1.ModifyEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Email.fromBuffer(value));
  static final _$trashEmail =
      $grpc.ClientMethod<$1.TrashEmailRequest, $0.Empty>(
          '/email.EmailService/TrashEmail',
          ($1.TrashEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$untrashEmail =
      $grpc.ClientMethod<$1.UntrashEmailRequest, $0.Empty>(
          '/email.EmailService/UntrashEmail',
          ($1.UntrashEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$sendEmail = $grpc.ClientMethod<$1.SendEmailRequest, $1.Email>(
      '/email.EmailService/SendEmail',
      ($1.SendEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Email.fromBuffer(value));

  EmailServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.Email> getEmail($1.GetEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListEmailsResponse> listEmails(
      $1.ListEmailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listEmails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Email> modifyEmail($1.ModifyEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$modifyEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> trashEmail($1.TrashEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$trashEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> untrashEmail($1.UntrashEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$untrashEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Email> sendEmail($1.SendEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class EmailServiceBase extends $grpc.Service {
  $core.String get $name => 'email.EmailService';

  EmailServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetEmailRequest, $1.Email>(
        'GetEmail',
        getEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetEmailRequest.fromBuffer(value),
        ($1.Email value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListEmailsRequest, $1.ListEmailsResponse>(
        'ListEmails',
        listEmails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListEmailsRequest.fromBuffer(value),
        ($1.ListEmailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ModifyEmailRequest, $1.Email>(
        'ModifyEmail',
        modifyEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ModifyEmailRequest.fromBuffer(value),
        ($1.Email value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.TrashEmailRequest, $0.Empty>(
        'TrashEmail',
        trashEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.TrashEmailRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UntrashEmailRequest, $0.Empty>(
        'UntrashEmail',
        untrashEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UntrashEmailRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendEmailRequest, $1.Email>(
        'SendEmail',
        sendEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendEmailRequest.fromBuffer(value),
        ($1.Email value) => value.writeToBuffer()));
  }

  $async.Future<$1.Email> getEmail_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetEmailRequest> request) async {
    return getEmail(call, await request);
  }

  $async.Future<$1.ListEmailsResponse> listEmails_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListEmailsRequest> request) async {
    return listEmails(call, await request);
  }

  $async.Future<$1.Email> modifyEmail_Pre($grpc.ServiceCall call,
      $async.Future<$1.ModifyEmailRequest> request) async {
    return modifyEmail(call, await request);
  }

  $async.Future<$0.Empty> trashEmail_Pre($grpc.ServiceCall call,
      $async.Future<$1.TrashEmailRequest> request) async {
    return trashEmail(call, await request);
  }

  $async.Future<$0.Empty> untrashEmail_Pre($grpc.ServiceCall call,
      $async.Future<$1.UntrashEmailRequest> request) async {
    return untrashEmail(call, await request);
  }

  $async.Future<$1.Email> sendEmail_Pre($grpc.ServiceCall call,
      $async.Future<$1.SendEmailRequest> request) async {
    return sendEmail(call, await request);
  }

  $async.Future<$1.Email> getEmail(
      $grpc.ServiceCall call, $1.GetEmailRequest request);
  $async.Future<$1.ListEmailsResponse> listEmails(
      $grpc.ServiceCall call, $1.ListEmailsRequest request);
  $async.Future<$1.Email> modifyEmail(
      $grpc.ServiceCall call, $1.ModifyEmailRequest request);
  $async.Future<$0.Empty> trashEmail(
      $grpc.ServiceCall call, $1.TrashEmailRequest request);
  $async.Future<$0.Empty> untrashEmail(
      $grpc.ServiceCall call, $1.UntrashEmailRequest request);
  $async.Future<$1.Email> sendEmail(
      $grpc.ServiceCall call, $1.SendEmailRequest request);
}

class ThreadServiceClient extends $grpc.Client {
  static final _$getThread = $grpc.ClientMethod<$1.GetThreadRequest, $1.Thread>(
      '/email.ThreadService/GetThread',
      ($1.GetThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Thread.fromBuffer(value));
  static final _$listThreads =
      $grpc.ClientMethod<$1.ListThreadsRequest, $1.ListThreadsResponse>(
          '/email.ThreadService/ListThreads',
          ($1.ListThreadsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListThreadsResponse.fromBuffer(value));
  static final _$modifyThread =
      $grpc.ClientMethod<$1.ModifyThreadRequest, $1.Thread>(
          '/email.ThreadService/ModifyThread',
          ($1.ModifyThreadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Thread.fromBuffer(value));
  static final _$trashThread =
      $grpc.ClientMethod<$1.TrashThreadRequest, $0.Empty>(
          '/email.ThreadService/TrashThread',
          ($1.TrashThreadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$untrashThread =
      $grpc.ClientMethod<$1.UntrashThreadRequest, $0.Empty>(
          '/email.ThreadService/UntrashThread',
          ($1.UntrashThreadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ThreadServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.Thread> getThread($1.GetThreadRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getThread, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListThreadsResponse> listThreads(
      $1.ListThreadsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listThreads, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Thread> modifyThread($1.ModifyThreadRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$modifyThread, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> trashThread($1.TrashThreadRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$trashThread, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> untrashThread($1.UntrashThreadRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$untrashThread, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ThreadServiceBase extends $grpc.Service {
  $core.String get $name => 'email.ThreadService';

  ThreadServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetThreadRequest, $1.Thread>(
        'GetThread',
        getThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetThreadRequest.fromBuffer(value),
        ($1.Thread value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListThreadsRequest, $1.ListThreadsResponse>(
            'ListThreads',
            listThreads_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListThreadsRequest.fromBuffer(value),
            ($1.ListThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ModifyThreadRequest, $1.Thread>(
        'ModifyThread',
        modifyThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ModifyThreadRequest.fromBuffer(value),
        ($1.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.TrashThreadRequest, $0.Empty>(
        'TrashThread',
        trashThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.TrashThreadRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UntrashThreadRequest, $0.Empty>(
        'UntrashThread',
        untrashThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UntrashThreadRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Thread> getThread_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetThreadRequest> request) async {
    return getThread(call, await request);
  }

  $async.Future<$1.ListThreadsResponse> listThreads_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListThreadsRequest> request) async {
    return listThreads(call, await request);
  }

  $async.Future<$1.Thread> modifyThread_Pre($grpc.ServiceCall call,
      $async.Future<$1.ModifyThreadRequest> request) async {
    return modifyThread(call, await request);
  }

  $async.Future<$0.Empty> trashThread_Pre($grpc.ServiceCall call,
      $async.Future<$1.TrashThreadRequest> request) async {
    return trashThread(call, await request);
  }

  $async.Future<$0.Empty> untrashThread_Pre($grpc.ServiceCall call,
      $async.Future<$1.UntrashThreadRequest> request) async {
    return untrashThread(call, await request);
  }

  $async.Future<$1.Thread> getThread(
      $grpc.ServiceCall call, $1.GetThreadRequest request);
  $async.Future<$1.ListThreadsResponse> listThreads(
      $grpc.ServiceCall call, $1.ListThreadsRequest request);
  $async.Future<$1.Thread> modifyThread(
      $grpc.ServiceCall call, $1.ModifyThreadRequest request);
  $async.Future<$0.Empty> trashThread(
      $grpc.ServiceCall call, $1.TrashThreadRequest request);
  $async.Future<$0.Empty> untrashThread(
      $grpc.ServiceCall call, $1.UntrashThreadRequest request);
}

class LabelServiceClient extends $grpc.Client {
  static final _$getLabel = $grpc.ClientMethod<$1.GetLabelRequest, $1.Label>(
      '/email.LabelService/GetLabel',
      ($1.GetLabelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Label.fromBuffer(value));
  static final _$listLabels =
      $grpc.ClientMethod<$0.Empty, $1.ListLabelsResponse>(
          '/email.LabelService/ListLabels',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListLabelsResponse.fromBuffer(value));
  static final _$createLabel =
      $grpc.ClientMethod<$1.CreateLabelRequest, $1.Label>(
          '/email.LabelService/CreateLabel',
          ($1.CreateLabelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Label.fromBuffer(value));
  static final _$updateLabel =
      $grpc.ClientMethod<$1.UpdateLabelRequest, $1.Label>(
          '/email.LabelService/UpdateLabel',
          ($1.UpdateLabelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Label.fromBuffer(value));
  static final _$deleteLabel =
      $grpc.ClientMethod<$1.DeleteLabelRequest, $0.Empty>(
          '/email.LabelService/DeleteLabel',
          ($1.DeleteLabelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  LabelServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.Label> getLabel($1.GetLabelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getLabel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListLabelsResponse> listLabels($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listLabels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Label> createLabel($1.CreateLabelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createLabel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Label> updateLabel($1.UpdateLabelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateLabel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> deleteLabel($1.DeleteLabelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteLabel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class LabelServiceBase extends $grpc.Service {
  $core.String get $name => 'email.LabelService';

  LabelServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetLabelRequest, $1.Label>(
        'GetLabel',
        getLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetLabelRequest.fromBuffer(value),
        ($1.Label value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ListLabelsResponse>(
        'ListLabels',
        listLabels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ListLabelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateLabelRequest, $1.Label>(
        'CreateLabel',
        createLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateLabelRequest.fromBuffer(value),
        ($1.Label value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateLabelRequest, $1.Label>(
        'UpdateLabel',
        updateLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateLabelRequest.fromBuffer(value),
        ($1.Label value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteLabelRequest, $0.Empty>(
        'DeleteLabel',
        deleteLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteLabelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Label> getLabel_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetLabelRequest> request) async {
    return getLabel(call, await request);
  }

  $async.Future<$1.ListLabelsResponse> listLabels_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listLabels(call, await request);
  }

  $async.Future<$1.Label> createLabel_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateLabelRequest> request) async {
    return createLabel(call, await request);
  }

  $async.Future<$1.Label> updateLabel_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateLabelRequest> request) async {
    return updateLabel(call, await request);
  }

  $async.Future<$0.Empty> deleteLabel_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteLabelRequest> request) async {
    return deleteLabel(call, await request);
  }

  $async.Future<$1.Label> getLabel(
      $grpc.ServiceCall call, $1.GetLabelRequest request);
  $async.Future<$1.ListLabelsResponse> listLabels(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Label> createLabel(
      $grpc.ServiceCall call, $1.CreateLabelRequest request);
  $async.Future<$1.Label> updateLabel(
      $grpc.ServiceCall call, $1.UpdateLabelRequest request);
  $async.Future<$0.Empty> deleteLabel(
      $grpc.ServiceCall call, $1.DeleteLabelRequest request);
}
