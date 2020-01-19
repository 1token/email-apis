///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;
export 'account.pb.dart';

class AccountServiceClient extends $grpc.Client {
  static final _$signup = $grpc.ClientMethod<$0.SignupRequest, $1.Empty>(
      '/service.AccountService/Signup',
      ($0.SignupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$verifyEmail =
      $grpc.ClientMethod<$0.VerifyEmailRequest, $1.Empty>(
          '/service.AccountService/VerifyEmail',
          ($0.VerifyEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$signin =
      $grpc.ClientMethod<$0.SigninRequest, $0.SigninResponse>(
          '/service.AccountService/Signin',
          ($0.SigninRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SigninResponse.fromBuffer(value));
  static final _$resetPassword =
      $grpc.ClientMethod<$0.ResetPasswordRequest, $1.Empty>(
          '/service.AccountService/ResetPassword',
          ($0.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$userInfo = $grpc.ClientMethod<$1.Empty, $0.UserInfoResponse>(
      '/service.AccountService/UserInfo',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfoResponse.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.Empty> signup($0.SignupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$signup, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Empty> verifyEmail($0.VerifyEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$verifyEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SigninResponse> signin($0.SigninRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$signin, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Empty> resetPassword($0.ResetPasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$resetPassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UserInfoResponse> userInfo($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$userInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'service.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignupRequest, $1.Empty>(
        'Signup',
        signup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignupRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyEmailRequest, $1.Empty>(
        'VerifyEmail',
        verifyEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.VerifyEmailRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SigninRequest, $0.SigninResponse>(
        'Signin',
        signin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SigninRequest.fromBuffer(value),
        ($0.SigninResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetPasswordRequest, $1.Empty>(
        'ResetPassword',
        resetPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResetPasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.UserInfoResponse>(
        'UserInfo',
        userInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.UserInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> signup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignupRequest> request) async {
    return signup(call, await request);
  }

  $async.Future<$1.Empty> verifyEmail_Pre($grpc.ServiceCall call,
      $async.Future<$0.VerifyEmailRequest> request) async {
    return verifyEmail(call, await request);
  }

  $async.Future<$0.SigninResponse> signin_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SigninRequest> request) async {
    return signin(call, await request);
  }

  $async.Future<$1.Empty> resetPassword_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResetPasswordRequest> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$0.UserInfoResponse> userInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return userInfo(call, await request);
  }

  $async.Future<$1.Empty> signup(
      $grpc.ServiceCall call, $0.SignupRequest request);
  $async.Future<$1.Empty> verifyEmail(
      $grpc.ServiceCall call, $0.VerifyEmailRequest request);
  $async.Future<$0.SigninResponse> signin(
      $grpc.ServiceCall call, $0.SigninRequest request);
  $async.Future<$1.Empty> resetPassword(
      $grpc.ServiceCall call, $0.ResetPasswordRequest request);
  $async.Future<$0.UserInfoResponse> userInfo(
      $grpc.ServiceCall call, $1.Empty request);
}
