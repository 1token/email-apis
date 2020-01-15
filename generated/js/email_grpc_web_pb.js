/**
 * @fileoverview gRPC-Web generated client stub for email
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_timestamp_pb = require('google-protobuf/google/protobuf/timestamp_pb.js')

var google_protobuf_any_pb = require('google-protobuf/google/protobuf/any_pb.js')

var google_protobuf_empty_pb = require('google-protobuf/google/protobuf/empty_pb.js')

var google_rpc_status_pb = require('./google/rpc/status_pb.js')
const proto = {};
proto.email = require('./email_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.email.MailboxServiceClient =
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
proto.email.MailboxServicePromiseClient =
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
 *   !proto.google.protobuf.Empty,
 *   !proto.email.GetProfileResponse>}
 */
const methodDescriptor_MailboxService_GetProfile = new grpc.web.MethodDescriptor(
  '/email.MailboxService/GetProfile',
  grpc.web.MethodType.UNARY,
  google_protobuf_empty_pb.Empty,
  proto.email.GetProfileResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.GetProfileResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.google.protobuf.Empty,
 *   !proto.email.GetProfileResponse>}
 */
const methodInfo_MailboxService_GetProfile = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.GetProfileResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.GetProfileResponse.deserializeBinary
);


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.GetProfileResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.GetProfileResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.MailboxServiceClient.prototype.getProfile =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.MailboxService/GetProfile',
      request,
      metadata || {},
      methodDescriptor_MailboxService_GetProfile,
      callback);
};


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.GetProfileResponse>}
 *     A native promise that resolves to the response
 */
proto.email.MailboxServicePromiseClient.prototype.getProfile =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.MailboxService/GetProfile',
      request,
      metadata || {},
      methodDescriptor_MailboxService_GetProfile);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.ListHistoryRequest,
 *   !proto.email.ListHistoryResponse>}
 */
const methodDescriptor_MailboxService_ListHistory = new grpc.web.MethodDescriptor(
  '/email.MailboxService/ListHistory',
  grpc.web.MethodType.UNARY,
  proto.email.ListHistoryRequest,
  proto.email.ListHistoryResponse,
  /**
   * @param {!proto.email.ListHistoryRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListHistoryResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.ListHistoryRequest,
 *   !proto.email.ListHistoryResponse>}
 */
const methodInfo_MailboxService_ListHistory = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.ListHistoryResponse,
  /**
   * @param {!proto.email.ListHistoryRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListHistoryResponse.deserializeBinary
);


/**
 * @param {!proto.email.ListHistoryRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.ListHistoryResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.ListHistoryResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.MailboxServiceClient.prototype.listHistory =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.MailboxService/ListHistory',
      request,
      metadata || {},
      methodDescriptor_MailboxService_ListHistory,
      callback);
};


/**
 * @param {!proto.email.ListHistoryRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.ListHistoryResponse>}
 *     A native promise that resolves to the response
 */
proto.email.MailboxServicePromiseClient.prototype.listHistory =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.MailboxService/ListHistory',
      request,
      metadata || {},
      methodDescriptor_MailboxService_ListHistory);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.StreamStateRequest,
 *   !proto.email.StreamingStateResponse>}
 */
const methodDescriptor_MailboxService_StreamState = new grpc.web.MethodDescriptor(
  '/email.MailboxService/StreamState',
  grpc.web.MethodType.SERVER_STREAMING,
  proto.email.StreamStateRequest,
  proto.email.StreamingStateResponse,
  /**
   * @param {!proto.email.StreamStateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.StreamingStateResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.StreamStateRequest,
 *   !proto.email.StreamingStateResponse>}
 */
const methodInfo_MailboxService_StreamState = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.StreamingStateResponse,
  /**
   * @param {!proto.email.StreamStateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.StreamingStateResponse.deserializeBinary
);


/**
 * @param {!proto.email.StreamStateRequest} request The request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!grpc.web.ClientReadableStream<!proto.email.StreamingStateResponse>}
 *     The XHR Node Readable Stream
 */
proto.email.MailboxServiceClient.prototype.streamState =
    function(request, metadata) {
  return this.client_.serverStreaming(this.hostname_ +
      '/email.MailboxService/StreamState',
      request,
      metadata || {},
      methodDescriptor_MailboxService_StreamState);
};


/**
 * @param {!proto.email.StreamStateRequest} request The request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!grpc.web.ClientReadableStream<!proto.email.StreamingStateResponse>}
 *     The XHR Node Readable Stream
 */
proto.email.MailboxServicePromiseClient.prototype.streamState =
    function(request, metadata) {
  return this.client_.serverStreaming(this.hostname_ +
      '/email.MailboxService/StreamState',
      request,
      metadata || {},
      methodDescriptor_MailboxService_StreamState);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.email.DraftServiceClient =
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
proto.email.DraftServicePromiseClient =
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
 *   !proto.email.GetDraftRequest,
 *   !proto.email.Draft>}
 */
const methodDescriptor_DraftService_GetDraft = new grpc.web.MethodDescriptor(
  '/email.DraftService/GetDraft',
  grpc.web.MethodType.UNARY,
  proto.email.GetDraftRequest,
  proto.email.Draft,
  /**
   * @param {!proto.email.GetDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Draft.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.GetDraftRequest,
 *   !proto.email.Draft>}
 */
const methodInfo_DraftService_GetDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Draft,
  /**
   * @param {!proto.email.GetDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Draft.deserializeBinary
);


/**
 * @param {!proto.email.GetDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Draft)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Draft>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.DraftServiceClient.prototype.getDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.DraftService/GetDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_GetDraft,
      callback);
};


/**
 * @param {!proto.email.GetDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Draft>}
 *     A native promise that resolves to the response
 */
proto.email.DraftServicePromiseClient.prototype.getDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.DraftService/GetDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_GetDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.ListDraftsRequest,
 *   !proto.email.ListDraftsResponse>}
 */
const methodDescriptor_DraftService_ListDrafts = new grpc.web.MethodDescriptor(
  '/email.DraftService/ListDrafts',
  grpc.web.MethodType.UNARY,
  proto.email.ListDraftsRequest,
  proto.email.ListDraftsResponse,
  /**
   * @param {!proto.email.ListDraftsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListDraftsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.ListDraftsRequest,
 *   !proto.email.ListDraftsResponse>}
 */
const methodInfo_DraftService_ListDrafts = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.ListDraftsResponse,
  /**
   * @param {!proto.email.ListDraftsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListDraftsResponse.deserializeBinary
);


/**
 * @param {!proto.email.ListDraftsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.ListDraftsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.ListDraftsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.DraftServiceClient.prototype.listDrafts =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.DraftService/ListDrafts',
      request,
      metadata || {},
      methodDescriptor_DraftService_ListDrafts,
      callback);
};


/**
 * @param {!proto.email.ListDraftsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.ListDraftsResponse>}
 *     A native promise that resolves to the response
 */
proto.email.DraftServicePromiseClient.prototype.listDrafts =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.DraftService/ListDrafts',
      request,
      metadata || {},
      methodDescriptor_DraftService_ListDrafts);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.CreateDraftRequest,
 *   !proto.email.Draft>}
 */
const methodDescriptor_DraftService_CreateDraft = new grpc.web.MethodDescriptor(
  '/email.DraftService/CreateDraft',
  grpc.web.MethodType.UNARY,
  proto.email.CreateDraftRequest,
  proto.email.Draft,
  /**
   * @param {!proto.email.CreateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Draft.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.CreateDraftRequest,
 *   !proto.email.Draft>}
 */
const methodInfo_DraftService_CreateDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Draft,
  /**
   * @param {!proto.email.CreateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Draft.deserializeBinary
);


/**
 * @param {!proto.email.CreateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Draft)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Draft>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.DraftServiceClient.prototype.createDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.DraftService/CreateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_CreateDraft,
      callback);
};


/**
 * @param {!proto.email.CreateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Draft>}
 *     A native promise that resolves to the response
 */
proto.email.DraftServicePromiseClient.prototype.createDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.DraftService/CreateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_CreateDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.UpdateDraftRequest,
 *   !proto.email.Draft>}
 */
const methodDescriptor_DraftService_UpdateDraft = new grpc.web.MethodDescriptor(
  '/email.DraftService/UpdateDraft',
  grpc.web.MethodType.UNARY,
  proto.email.UpdateDraftRequest,
  proto.email.Draft,
  /**
   * @param {!proto.email.UpdateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Draft.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.UpdateDraftRequest,
 *   !proto.email.Draft>}
 */
const methodInfo_DraftService_UpdateDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Draft,
  /**
   * @param {!proto.email.UpdateDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Draft.deserializeBinary
);


/**
 * @param {!proto.email.UpdateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Draft)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Draft>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.DraftServiceClient.prototype.updateDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.DraftService/UpdateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_UpdateDraft,
      callback);
};


/**
 * @param {!proto.email.UpdateDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Draft>}
 *     A native promise that resolves to the response
 */
proto.email.DraftServicePromiseClient.prototype.updateDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.DraftService/UpdateDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_UpdateDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.DeleteDraftRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_DraftService_DeleteDraft = new grpc.web.MethodDescriptor(
  '/email.DraftService/DeleteDraft',
  grpc.web.MethodType.UNARY,
  proto.email.DeleteDraftRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.DeleteDraftRequest} request
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
 *   !proto.email.DeleteDraftRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_DraftService_DeleteDraft = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.DeleteDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.email.DeleteDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.DraftServiceClient.prototype.deleteDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.DraftService/DeleteDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_DeleteDraft,
      callback);
};


/**
 * @param {!proto.email.DeleteDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.email.DraftServicePromiseClient.prototype.deleteDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.DraftService/DeleteDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_DeleteDraft);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.SendDraftRequest,
 *   !proto.email.Email>}
 */
const methodDescriptor_DraftService_SendDraft = new grpc.web.MethodDescriptor(
  '/email.DraftService/SendDraft',
  grpc.web.MethodType.UNARY,
  proto.email.SendDraftRequest,
  proto.email.Email,
  /**
   * @param {!proto.email.SendDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.SendDraftRequest,
 *   !proto.email.Email>}
 */
const methodInfo_DraftService_SendDraft = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Email,
  /**
   * @param {!proto.email.SendDraftRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @param {!proto.email.SendDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.DraftServiceClient.prototype.sendDraft =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.DraftService/SendDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_SendDraft,
      callback);
};


/**
 * @param {!proto.email.SendDraftRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Email>}
 *     A native promise that resolves to the response
 */
proto.email.DraftServicePromiseClient.prototype.sendDraft =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.DraftService/SendDraft',
      request,
      metadata || {},
      methodDescriptor_DraftService_SendDraft);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.email.EmailServiceClient =
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
proto.email.EmailServicePromiseClient =
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
 *   !proto.email.GetEmailRequest,
 *   !proto.email.Email>}
 */
const methodDescriptor_EmailService_GetEmail = new grpc.web.MethodDescriptor(
  '/email.EmailService/GetEmail',
  grpc.web.MethodType.UNARY,
  proto.email.GetEmailRequest,
  proto.email.Email,
  /**
   * @param {!proto.email.GetEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.GetEmailRequest,
 *   !proto.email.Email>}
 */
const methodInfo_EmailService_GetEmail = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Email,
  /**
   * @param {!proto.email.GetEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @param {!proto.email.GetEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.EmailServiceClient.prototype.getEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.EmailService/GetEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_GetEmail,
      callback);
};


/**
 * @param {!proto.email.GetEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Email>}
 *     A native promise that resolves to the response
 */
proto.email.EmailServicePromiseClient.prototype.getEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.EmailService/GetEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_GetEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.ListEmailsRequest,
 *   !proto.email.ListEmailsResponse>}
 */
const methodDescriptor_EmailService_ListEmails = new grpc.web.MethodDescriptor(
  '/email.EmailService/ListEmails',
  grpc.web.MethodType.UNARY,
  proto.email.ListEmailsRequest,
  proto.email.ListEmailsResponse,
  /**
   * @param {!proto.email.ListEmailsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListEmailsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.ListEmailsRequest,
 *   !proto.email.ListEmailsResponse>}
 */
const methodInfo_EmailService_ListEmails = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.ListEmailsResponse,
  /**
   * @param {!proto.email.ListEmailsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListEmailsResponse.deserializeBinary
);


/**
 * @param {!proto.email.ListEmailsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.ListEmailsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.ListEmailsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.EmailServiceClient.prototype.listEmails =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.EmailService/ListEmails',
      request,
      metadata || {},
      methodDescriptor_EmailService_ListEmails,
      callback);
};


/**
 * @param {!proto.email.ListEmailsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.ListEmailsResponse>}
 *     A native promise that resolves to the response
 */
proto.email.EmailServicePromiseClient.prototype.listEmails =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.EmailService/ListEmails',
      request,
      metadata || {},
      methodDescriptor_EmailService_ListEmails);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.ModifyEmailRequest,
 *   !proto.email.Email>}
 */
const methodDescriptor_EmailService_ModifyEmail = new grpc.web.MethodDescriptor(
  '/email.EmailService/ModifyEmail',
  grpc.web.MethodType.UNARY,
  proto.email.ModifyEmailRequest,
  proto.email.Email,
  /**
   * @param {!proto.email.ModifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.ModifyEmailRequest,
 *   !proto.email.Email>}
 */
const methodInfo_EmailService_ModifyEmail = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Email,
  /**
   * @param {!proto.email.ModifyEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @param {!proto.email.ModifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.EmailServiceClient.prototype.modifyEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.EmailService/ModifyEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_ModifyEmail,
      callback);
};


/**
 * @param {!proto.email.ModifyEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Email>}
 *     A native promise that resolves to the response
 */
proto.email.EmailServicePromiseClient.prototype.modifyEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.EmailService/ModifyEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_ModifyEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.TrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_EmailService_TrashEmail = new grpc.web.MethodDescriptor(
  '/email.EmailService/TrashEmail',
  grpc.web.MethodType.UNARY,
  proto.email.TrashEmailRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.TrashEmailRequest} request
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
 *   !proto.email.TrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_EmailService_TrashEmail = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.TrashEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.email.TrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.EmailServiceClient.prototype.trashEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.EmailService/TrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_TrashEmail,
      callback);
};


/**
 * @param {!proto.email.TrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.email.EmailServicePromiseClient.prototype.trashEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.EmailService/TrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_TrashEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.UntrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_EmailService_UntrashEmail = new grpc.web.MethodDescriptor(
  '/email.EmailService/UntrashEmail',
  grpc.web.MethodType.UNARY,
  proto.email.UntrashEmailRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.UntrashEmailRequest} request
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
 *   !proto.email.UntrashEmailRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_EmailService_UntrashEmail = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.UntrashEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.email.UntrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.EmailServiceClient.prototype.untrashEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.EmailService/UntrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_UntrashEmail,
      callback);
};


/**
 * @param {!proto.email.UntrashEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.email.EmailServicePromiseClient.prototype.untrashEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.EmailService/UntrashEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_UntrashEmail);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.SendEmailRequest,
 *   !proto.email.Email>}
 */
const methodDescriptor_EmailService_SendEmail = new grpc.web.MethodDescriptor(
  '/email.EmailService/SendEmail',
  grpc.web.MethodType.UNARY,
  proto.email.SendEmailRequest,
  proto.email.Email,
  /**
   * @param {!proto.email.SendEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.SendEmailRequest,
 *   !proto.email.Email>}
 */
const methodInfo_EmailService_SendEmail = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Email,
  /**
   * @param {!proto.email.SendEmailRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Email.deserializeBinary
);


/**
 * @param {!proto.email.SendEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Email)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Email>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.EmailServiceClient.prototype.sendEmail =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.EmailService/SendEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_SendEmail,
      callback);
};


/**
 * @param {!proto.email.SendEmailRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Email>}
 *     A native promise that resolves to the response
 */
proto.email.EmailServicePromiseClient.prototype.sendEmail =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.EmailService/SendEmail',
      request,
      metadata || {},
      methodDescriptor_EmailService_SendEmail);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.email.ThreadServiceClient =
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
proto.email.ThreadServicePromiseClient =
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
 *   !proto.email.GetThreadRequest,
 *   !proto.email.Thread>}
 */
const methodDescriptor_ThreadService_GetThread = new grpc.web.MethodDescriptor(
  '/email.ThreadService/GetThread',
  grpc.web.MethodType.UNARY,
  proto.email.GetThreadRequest,
  proto.email.Thread,
  /**
   * @param {!proto.email.GetThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Thread.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.GetThreadRequest,
 *   !proto.email.Thread>}
 */
const methodInfo_ThreadService_GetThread = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Thread,
  /**
   * @param {!proto.email.GetThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Thread.deserializeBinary
);


/**
 * @param {!proto.email.GetThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Thread)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Thread>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.ThreadServiceClient.prototype.getThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.ThreadService/GetThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_GetThread,
      callback);
};


/**
 * @param {!proto.email.GetThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Thread>}
 *     A native promise that resolves to the response
 */
proto.email.ThreadServicePromiseClient.prototype.getThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.ThreadService/GetThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_GetThread);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.ListThreadsRequest,
 *   !proto.email.ListThreadsResponse>}
 */
const methodDescriptor_ThreadService_ListThreads = new grpc.web.MethodDescriptor(
  '/email.ThreadService/ListThreads',
  grpc.web.MethodType.UNARY,
  proto.email.ListThreadsRequest,
  proto.email.ListThreadsResponse,
  /**
   * @param {!proto.email.ListThreadsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListThreadsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.ListThreadsRequest,
 *   !proto.email.ListThreadsResponse>}
 */
const methodInfo_ThreadService_ListThreads = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.ListThreadsResponse,
  /**
   * @param {!proto.email.ListThreadsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListThreadsResponse.deserializeBinary
);


/**
 * @param {!proto.email.ListThreadsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.ListThreadsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.ListThreadsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.ThreadServiceClient.prototype.listThreads =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.ThreadService/ListThreads',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ListThreads,
      callback);
};


/**
 * @param {!proto.email.ListThreadsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.ListThreadsResponse>}
 *     A native promise that resolves to the response
 */
proto.email.ThreadServicePromiseClient.prototype.listThreads =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.ThreadService/ListThreads',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ListThreads);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.ModifyThreadRequest,
 *   !proto.email.Thread>}
 */
const methodDescriptor_ThreadService_ModifyThread = new grpc.web.MethodDescriptor(
  '/email.ThreadService/ModifyThread',
  grpc.web.MethodType.UNARY,
  proto.email.ModifyThreadRequest,
  proto.email.Thread,
  /**
   * @param {!proto.email.ModifyThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Thread.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.ModifyThreadRequest,
 *   !proto.email.Thread>}
 */
const methodInfo_ThreadService_ModifyThread = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Thread,
  /**
   * @param {!proto.email.ModifyThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Thread.deserializeBinary
);


/**
 * @param {!proto.email.ModifyThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Thread)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Thread>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.ThreadServiceClient.prototype.modifyThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.ThreadService/ModifyThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ModifyThread,
      callback);
};


/**
 * @param {!proto.email.ModifyThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Thread>}
 *     A native promise that resolves to the response
 */
proto.email.ThreadServicePromiseClient.prototype.modifyThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.ThreadService/ModifyThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_ModifyThread);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.TrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_ThreadService_TrashThread = new grpc.web.MethodDescriptor(
  '/email.ThreadService/TrashThread',
  grpc.web.MethodType.UNARY,
  proto.email.TrashThreadRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.TrashThreadRequest} request
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
 *   !proto.email.TrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_ThreadService_TrashThread = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.TrashThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.email.TrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.ThreadServiceClient.prototype.trashThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.ThreadService/TrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_TrashThread,
      callback);
};


/**
 * @param {!proto.email.TrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.email.ThreadServicePromiseClient.prototype.trashThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.ThreadService/TrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_TrashThread);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.UntrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_ThreadService_UntrashThread = new grpc.web.MethodDescriptor(
  '/email.ThreadService/UntrashThread',
  grpc.web.MethodType.UNARY,
  proto.email.UntrashThreadRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.UntrashThreadRequest} request
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
 *   !proto.email.UntrashThreadRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_ThreadService_UntrashThread = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.UntrashThreadRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.email.UntrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.ThreadServiceClient.prototype.untrashThread =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.ThreadService/UntrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_UntrashThread,
      callback);
};


/**
 * @param {!proto.email.UntrashThreadRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.email.ThreadServicePromiseClient.prototype.untrashThread =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.ThreadService/UntrashThread',
      request,
      metadata || {},
      methodDescriptor_ThreadService_UntrashThread);
};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.email.LabelServiceClient =
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
proto.email.LabelServicePromiseClient =
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
 *   !proto.email.GetLabelRequest,
 *   !proto.email.Label>}
 */
const methodDescriptor_LabelService_GetLabel = new grpc.web.MethodDescriptor(
  '/email.LabelService/GetLabel',
  grpc.web.MethodType.UNARY,
  proto.email.GetLabelRequest,
  proto.email.Label,
  /**
   * @param {!proto.email.GetLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Label.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.GetLabelRequest,
 *   !proto.email.Label>}
 */
const methodInfo_LabelService_GetLabel = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Label,
  /**
   * @param {!proto.email.GetLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Label.deserializeBinary
);


/**
 * @param {!proto.email.GetLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Label)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Label>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.LabelServiceClient.prototype.getLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.LabelService/GetLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetLabel,
      callback);
};


/**
 * @param {!proto.email.GetLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Label>}
 *     A native promise that resolves to the response
 */
proto.email.LabelServicePromiseClient.prototype.getLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.LabelService/GetLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_GetLabel);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.google.protobuf.Empty,
 *   !proto.email.ListLabelsResponse>}
 */
const methodDescriptor_LabelService_ListLabels = new grpc.web.MethodDescriptor(
  '/email.LabelService/ListLabels',
  grpc.web.MethodType.UNARY,
  google_protobuf_empty_pb.Empty,
  proto.email.ListLabelsResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListLabelsResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.google.protobuf.Empty,
 *   !proto.email.ListLabelsResponse>}
 */
const methodInfo_LabelService_ListLabels = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.ListLabelsResponse,
  /**
   * @param {!proto.google.protobuf.Empty} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.ListLabelsResponse.deserializeBinary
);


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.ListLabelsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.ListLabelsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.LabelServiceClient.prototype.listLabels =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.LabelService/ListLabels',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListLabels,
      callback);
};


/**
 * @param {!proto.google.protobuf.Empty} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.ListLabelsResponse>}
 *     A native promise that resolves to the response
 */
proto.email.LabelServicePromiseClient.prototype.listLabels =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.LabelService/ListLabels',
      request,
      metadata || {},
      methodDescriptor_LabelService_ListLabels);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.CreateLabelRequest,
 *   !proto.email.Label>}
 */
const methodDescriptor_LabelService_CreateLabel = new grpc.web.MethodDescriptor(
  '/email.LabelService/CreateLabel',
  grpc.web.MethodType.UNARY,
  proto.email.CreateLabelRequest,
  proto.email.Label,
  /**
   * @param {!proto.email.CreateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Label.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.CreateLabelRequest,
 *   !proto.email.Label>}
 */
const methodInfo_LabelService_CreateLabel = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Label,
  /**
   * @param {!proto.email.CreateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Label.deserializeBinary
);


/**
 * @param {!proto.email.CreateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Label)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Label>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.LabelServiceClient.prototype.createLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.LabelService/CreateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_CreateLabel,
      callback);
};


/**
 * @param {!proto.email.CreateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Label>}
 *     A native promise that resolves to the response
 */
proto.email.LabelServicePromiseClient.prototype.createLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.LabelService/CreateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_CreateLabel);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.UpdateLabelRequest,
 *   !proto.email.Label>}
 */
const methodDescriptor_LabelService_UpdateLabel = new grpc.web.MethodDescriptor(
  '/email.LabelService/UpdateLabel',
  grpc.web.MethodType.UNARY,
  proto.email.UpdateLabelRequest,
  proto.email.Label,
  /**
   * @param {!proto.email.UpdateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Label.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.email.UpdateLabelRequest,
 *   !proto.email.Label>}
 */
const methodInfo_LabelService_UpdateLabel = new grpc.web.AbstractClientBase.MethodInfo(
  proto.email.Label,
  /**
   * @param {!proto.email.UpdateLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.email.Label.deserializeBinary
);


/**
 * @param {!proto.email.UpdateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.email.Label)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.email.Label>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.LabelServiceClient.prototype.updateLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.LabelService/UpdateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_UpdateLabel,
      callback);
};


/**
 * @param {!proto.email.UpdateLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.email.Label>}
 *     A native promise that resolves to the response
 */
proto.email.LabelServicePromiseClient.prototype.updateLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.LabelService/UpdateLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_UpdateLabel);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.email.DeleteLabelRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodDescriptor_LabelService_DeleteLabel = new grpc.web.MethodDescriptor(
  '/email.LabelService/DeleteLabel',
  grpc.web.MethodType.UNARY,
  proto.email.DeleteLabelRequest,
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.DeleteLabelRequest} request
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
 *   !proto.email.DeleteLabelRequest,
 *   !proto.google.protobuf.Empty>}
 */
const methodInfo_LabelService_DeleteLabel = new grpc.web.AbstractClientBase.MethodInfo(
  google_protobuf_empty_pb.Empty,
  /**
   * @param {!proto.email.DeleteLabelRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  google_protobuf_empty_pb.Empty.deserializeBinary
);


/**
 * @param {!proto.email.DeleteLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.google.protobuf.Empty)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.google.protobuf.Empty>|undefined}
 *     The XHR Node Readable Stream
 */
proto.email.LabelServiceClient.prototype.deleteLabel =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/email.LabelService/DeleteLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteLabel,
      callback);
};


/**
 * @param {!proto.email.DeleteLabelRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.google.protobuf.Empty>}
 *     A native promise that resolves to the response
 */
proto.email.LabelServicePromiseClient.prototype.deleteLabel =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/email.LabelService/DeleteLabel',
      request,
      metadata || {},
      methodDescriptor_LabelService_DeleteLabel);
};


module.exports = proto.email;

