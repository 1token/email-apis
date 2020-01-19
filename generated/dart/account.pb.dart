///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SignupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignupRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  SignupRequest._() : super();
  factory SignupRequest() => create();
  factory SignupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignupRequest clone() => SignupRequest()..mergeFromMessage(this);
  SignupRequest copyWith(void Function(SignupRequest) updates) => super.copyWith((message) => updates(message as SignupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignupRequest create() => SignupRequest._();
  SignupRequest createEmptyInstance() => create();
  static $pb.PbList<SignupRequest> createRepeated() => $pb.PbList<SignupRequest>();
  @$core.pragma('dart2js:noInline')
  static SignupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignupRequest>(create);
  static SignupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class VerifyEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyEmailRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..hasRequiredFields = false
  ;

  VerifyEmailRequest._() : super();
  factory VerifyEmailRequest() => create();
  factory VerifyEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerifyEmailRequest clone() => VerifyEmailRequest()..mergeFromMessage(this);
  VerifyEmailRequest copyWith(void Function(VerifyEmailRequest) updates) => super.copyWith((message) => updates(message as VerifyEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyEmailRequest create() => VerifyEmailRequest._();
  VerifyEmailRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyEmailRequest> createRepeated() => $pb.PbList<VerifyEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyEmailRequest>(create);
  static VerifyEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class SigninRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SigninRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  SigninRequest._() : super();
  factory SigninRequest() => create();
  factory SigninRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigninRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SigninRequest clone() => SigninRequest()..mergeFromMessage(this);
  SigninRequest copyWith(void Function(SigninRequest) updates) => super.copyWith((message) => updates(message as SigninRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigninRequest create() => SigninRequest._();
  SigninRequest createEmptyInstance() => create();
  static $pb.PbList<SigninRequest> createRepeated() => $pb.PbList<SigninRequest>();
  @$core.pragma('dart2js:noInline')
  static SigninRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SigninRequest>(create);
  static SigninRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class SigninResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SigninResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  SigninResponse._() : super();
  factory SigninResponse() => create();
  factory SigninResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigninResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SigninResponse clone() => SigninResponse()..mergeFromMessage(this);
  SigninResponse copyWith(void Function(SigninResponse) updates) => super.copyWith((message) => updates(message as SigninResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigninResponse create() => SigninResponse._();
  SigninResponse createEmptyInstance() => create();
  static $pb.PbList<SigninResponse> createRepeated() => $pb.PbList<SigninResponse>();
  @$core.pragma('dart2js:noInline')
  static SigninResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SigninResponse>(create);
  static SigninResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class ResetPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResetPasswordRequest', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  ResetPasswordRequest._() : super();
  factory ResetPasswordRequest() => create();
  factory ResetPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResetPasswordRequest clone() => ResetPasswordRequest()..mergeFromMessage(this);
  ResetPasswordRequest copyWith(void Function(ResetPasswordRequest) updates) => super.copyWith((message) => updates(message as ResetPasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest create() => ResetPasswordRequest._();
  ResetPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordRequest> createRepeated() => $pb.PbList<ResetPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordRequest>(create);
  static ResetPasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

enum UserInfoResponse_Picture {
  data, 
  uri, 
  notSet
}

class UserInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UserInfoResponse_Picture> _UserInfoResponse_PictureByTag = {
    6 : UserInfoResponse_Picture.data,
    7 : UserInfoResponse_Picture.uri,
    0 : UserInfoResponse_Picture.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInfoResponse', package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..oo(0, [6, 7])
    ..aOS(1, 'username')
    ..aOS(2, 'email')
    ..aOS(3, 'name')
    ..aOS(4, 'givenName')
    ..aOS(5, 'familyName')
    ..a<$core.List<$core.int>>(6, 'data', $pb.PbFieldType.OY)
    ..aOS(7, 'uri')
    ..hasRequiredFields = false
  ;

  UserInfoResponse._() : super();
  factory UserInfoResponse() => create();
  factory UserInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInfoResponse clone() => UserInfoResponse()..mergeFromMessage(this);
  UserInfoResponse copyWith(void Function(UserInfoResponse) updates) => super.copyWith((message) => updates(message as UserInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoResponse create() => UserInfoResponse._();
  UserInfoResponse createEmptyInstance() => create();
  static $pb.PbList<UserInfoResponse> createRepeated() => $pb.PbList<UserInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static UserInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoResponse>(create);
  static UserInfoResponse _defaultInstance;

  UserInfoResponse_Picture whichPicture() => _UserInfoResponse_PictureByTag[$_whichOneof(0)];
  void clearPicture() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get givenName => $_getSZ(3);
  @$pb.TagNumber(4)
  set givenName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGivenName() => $_has(3);
  @$pb.TagNumber(4)
  void clearGivenName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get familyName => $_getSZ(4);
  @$pb.TagNumber(5)
  set familyName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFamilyName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFamilyName() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data => $_getN(5);
  @$pb.TagNumber(6)
  set data($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get uri => $_getSZ(6);
  @$pb.TagNumber(7)
  set uri($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUri() => $_has(6);
  @$pb.TagNumber(7)
  void clearUri() => clearField(7);
}

