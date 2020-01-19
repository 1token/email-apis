/**
 * @fileoverview gRPC-Web generated client stub for service
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_empty_pb = require('google-protobuf/google/protobuf/empty_pb.js')
const proto = {};
proto.service = require('./account_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.service.AccountServiceClient =
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
proto.service.AccountServicePromiseClient =
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
 *   !proto.service.SignupRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_AccountService_Signup = new grpc.web.MethodDescriptor(
  '/service.AccountService/Signup',
  grpc.web.MethodType.UNARY,
  proto.service.SignupRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.SignupRequest} request
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
 *   !proto.service.SignupRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_AccountService_Signup = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.SignupRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.SignupRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.AccountServiceClient.prototype.signup =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.AccountService/Signup',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signup,
      callback);
};


/**
 * @param {!proto.service.SignupRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.AccountServicePromiseClient.prototype.signup =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.AccountService/Signup',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signup);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.VerifyEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_AccountService_VerifyEmail = new grpc.web.MethodDescriptor(
  '/service.AccountService/VerifyEmail',
  grpc.web.MethodType.UNARY,
  proto.service.VerifyEmailRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.VerifyEmailRequest} request
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
 *   !proto.service.VerifyEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_AccountService_VerifyEmail = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.VerifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.VerifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.AccountServiceClient.prototype.verifyEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.AccountService/VerifyEmail',
      request,
      metadata || {},
      methodDescriptor_AccountService_VerifyEmail,
      callback);
};


/**
 * @param {!proto.service.VerifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.AccountServicePromiseClient.prototype.verifyEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.AccountService/VerifyEmail',
      request,
      metadata || {},
      methodDescriptor_AccountService_VerifyEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.SigninRequest,
 *   !proto.service.SigninResponse>}
 */
const methodDescriptor_AccountService_Signin = new grpc.web.MethodDescriptor(
  '/service.AccountService/Signin',
  grpc.web.MethodType.UNARY,
  proto.service.SigninRequest,
  proto.service.SigninResponse,
  /**
   * @param {!proto.service.SigninRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.SigninResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.service.SigninRequest,
 *   !proto.service.SigninResponse>}
 */
const methodInfo_AccountService_Signin = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.SigninResponse,
  /**
   * @param {!proto.service.SigninRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.SigninResponse.deserializeBinary
);


/**
 * @param {!proto.service.SigninRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.SigninResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.SigninResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.AccountServiceClient.prototype.signin =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.AccountService/Signin',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signin,
      callback);
};


/**
 * @param {!proto.service.SigninRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.service.SigninResponse>}
 *     A native promise that resolves to the response
 */
proto.service.AccountServicePromiseClient.prototype.signin =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.AccountService/Signin',
      request,
      metadata || {},
      methodDescriptor_AccountService_Signin);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.service.ResetPasswordRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_AccountService_ResetPassword = new grpc.web.MethodDescriptor(
  '/service.AccountService/ResetPassword',
  grpc.web.MethodType.UNARY,
  proto.service.ResetPasswordRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.ResetPasswordRequest} request
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
 *   !proto.service.ResetPasswordRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_AccountService_ResetPassword = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.service.ResetPasswordRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.service.ResetPasswordRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.AccountServiceClient.prototype.resetPassword =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.AccountService/ResetPassword',
      request,
      metadata || {},
      methodDescriptor_AccountService_ResetPassword,
      callback);
};


/**
 * @param {!proto.service.ResetPasswordRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.service.AccountServicePromiseClient.prototype.resetPassword =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.AccountService/ResetPassword',
      request,
      metadata || {},
      methodDescriptor_AccountService_ResetPassword);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.google.protobuf.Empty,
 *   !proto.service.UserInfoResponse>}
 */
const methodDescriptor_AccountService_UserInfo = new grpc.web.MethodDescriptor(
  '/service.AccountService/UserInfo',
  grpc.web.MethodType.UNARY,
  google_protobuf_empty_pb.Empty,
  proto.service.UserInfoResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.UserInfoResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.google.protobuf.Empty,
 *   !proto.service.UserInfoResponse>}
 */
const methodInfo_AccountService_UserInfo = new grpc.web.AbstractClientBase.MethodInfo(
  proto.service.UserInfoResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.service.UserInfoResponse.deserializeBinary
);


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.service.UserInfoResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.service.UserInfoResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.service.AccountServiceClient.prototype.userInfo =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/service.AccountService/UserInfo',
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
 * @return {!Promise<!proto.service.UserInfoResponse>}
 *     A native promise that resolves to the response
 */
proto.service.AccountServicePromiseClient.prototype.userInfo =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/service.AccountService/UserInfo',
      request,
      metadata || {},
      methodDescriptor_AccountService_UserInfo);
};


module.exports = proto.service;

