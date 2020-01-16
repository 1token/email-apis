/**
 * @fileoverview gRPC-Web generated client stub for account
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_empty_pb = require('google-protobuf/google/protobuf/empty_pb.js')
const proto = {};
proto.account = require('./account_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.account.AccountServiceClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options['format'] = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.account.AccountServicePromiseClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options['format'] = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.account.SignupRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_AccountService_Signup = new grpc.web.MethodDescriptor(
  '/account.AccountService/Signup',
  grpc.web.MethodType.UNARY,
  proto.account.SignupRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.account.SignupRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.account.SignupRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_AccountService_Signup = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.account.SignupRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.account.SignupRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.account.AccountServiceClient.prototype.signup =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/account.AccountService/Signup',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signup,
      callback);
};


/**
 * @param {!proto.account.SignupRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.account.AccountServicePromiseClient.prototype.signup =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/account.AccountService/Signup',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signup);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.account.VerifyEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_AccountService_VerifyEmail = new grpc.web.MethodDescriptor(
  '/account.AccountService/VerifyEmail',
  grpc.web.MethodType.UNARY,
  proto.account.VerifyEmailRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.account.VerifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.account.VerifyEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_AccountService_VerifyEmail = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.account.VerifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.account.VerifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.account.AccountServiceClient.prototype.verifyEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/account.AccountService/VerifyEmail',
      request,
      metadata || {},
      methodDescriptor_AccountService_VerifyEmail,
      callback);
};


/**
 * @param {!proto.account.VerifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.account.AccountServicePromiseClient.prototype.verifyEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/account.AccountService/VerifyEmail',
      request,
      metadata || {},
      methodDescriptor_AccountService_VerifyEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.account.SigninRequest,
 *   !proto.account.SigninResponse>}
 */
const methodDescriptor_AccountService_Signin = new grpc.web.MethodDescriptor(
  '/account.AccountService/Signin',
  grpc.web.MethodType.UNARY,
  proto.account.SigninRequest,
  proto.account.SigninResponse,
  /**
   * @param {!proto.account.SigninRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.account.SigninResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.account.SigninRequest,
 *   !proto.account.SigninResponse>}
 */
const methodInfo_AccountService_Signin = new grpc.web.AbstractClientBase.MethodInfo(
  proto.account.SigninResponse,
  /**
   * @param {!proto.account.SigninRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.account.SigninResponse.deserializeBinary
);


/**
 * @param {!proto.account.SigninRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.account.SigninResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.account.SigninResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.account.AccountServiceClient.prototype.signin =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/account.AccountService/Signin',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signin,
      callback);
};


/**
 * @param {!proto.account.SigninRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.account.SigninResponse>}
 *     A native promise that resolves to the response
 */
proto.account.AccountServicePromiseClient.prototype.signin =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/account.AccountService/Signin',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signin);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.account.ResetPasswordRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_AccountService_ResetPassword = new grpc.web.MethodDescriptor(
  '/account.AccountService/ResetPassword',
  grpc.web.MethodType.UNARY,
  proto.account.ResetPasswordRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.account.ResetPasswordRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.account.ResetPasswordRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_AccountService_ResetPassword = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.account.ResetPasswordRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.account.ResetPasswordRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.account.AccountServiceClient.prototype.resetPassword =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/account.AccountService/ResetPassword',
      request,
      metadata || {},
      methodDescriptor_AccountService_ResetPassword,
      callback);
};


/**
 * @param {!proto.account.ResetPasswordRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.account.AccountServicePromiseClient.prototype.resetPassword =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/account.AccountService/ResetPassword',
      request,
      metadata || {},
      methodDescriptor_AccountService_ResetPassword);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.google.protobuf.Empty,
 *   !proto.account.UserInfoResponse>}
 */
const methodDescriptor_AccountService_UserInfo = new grpc.web.MethodDescriptor(
  '/account.AccountService/UserInfo',
  grpc.web.MethodType.UNARY,
  google_protobuf_empty_pb.Empty,
  proto.account.UserInfoResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.account.UserInfoResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.google.protobuf.Empty,
 *   !proto.account.UserInfoResponse>}
 */
const methodInfo_AccountService_UserInfo = new grpc.web.AbstractClientBase.MethodInfo(
  proto.account.UserInfoResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.account.UserInfoResponse.deserializeBinary
);


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.account.UserInfoResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.account.UserInfoResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.account.AccountServiceClient.prototype.userInfo =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/account.AccountService/UserInfo',
      request,
      metadata || {},
      methodDescriptor_AccountService_UserInfo,
      callback);
};


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.account.UserInfoResponse>}
 *     A native promise that resolves to the response
 */
proto.account.AccountServicePromiseClient.prototype.userInfo =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/account.AccountService/UserInfo',
      request,
      metadata || {},
      methodDescriptor_AccountService_UserInfo);
};


module.exports = proto.account;

